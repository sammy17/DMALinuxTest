#include <chrono>
#include <string.h>
#include <fstream>
#include <iostream>

//V4L2 Includes

#include <stdio.h>
#include <stdlib.h>
#include <linux/ioctl.h>
#include <linux/types.h>
#include <linux/v4l2-common.h>
#include <linux/v4l2-controls.h>
#include <linux/videodev2.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <string.h>
#include <string>
// #include <termios.h>

#include "axidma.h"
#include "frame1.h"
#include "xparameters.h"


/***************** Macros (Inline Functions) Definitions *********************/

#define TX_BASE_ADDR 0x01000000
#define DDR_RANGE 0x01000000
#define RX_BASE_ADDR 0x02000000

#define AXILITES_BASEADDR 0x43C00000
#define CRTL_BUS_BASEADDR 0x43C10000
#define AXILITE_RANGE 0xFFFF

#define WIDTH 320
#define HEIGHT 240
#define BUF_SIZE(W,H) W*H
#define N BUF_SIZE(WIDTH,HEIGHT)

using namespace std;

/***************** Global Variables *********************/

uint8_t * TX_BASE_PTR = (uint8_t *) (TX_BASE_ADDR);
uint8_t * RX_BASE_PTR = (uint8_t *) (RX_BASE_ADDR);

//XBacksub backsub;
//XFeature feature;
uint32_t * src;
uint32_t * dst;
int fdIP;

uint8_t * ybuffer = new uint8_t[N];


#define M_AXI_BOUNDING 0x21000000
#define M_AXI_FEATUREH 0x29000000

unsigned char *m_dma_buffer_TX = (unsigned char*) TX_BASE_ADDR;
unsigned char *m_dma_buffer_RX = (unsigned char*) RX_BASE_ADDR;

uint16_t * m_axi_bound = (uint16_t *) M_AXI_BOUNDING;
uint16_t * m_axi_feature = (uint16_t *) M_AXI_FEATUREH;

// void backsub_crtl_print(XBacksub * backsub_ptr){
//     printf("Backsub control reg : %X\n",backsub_ptr->Crtl_bus_BaseAddress);
//     printf("Backsub control reg value: %X\n",(unsigned int)(backsub_ptr->Crtl_bus_BaseAddress));
// }



int main(int argc, char *argv[]) {

    // Initializing IP Core Starts here .........................
    fdIP = open ("/dev/mem", O_RDWR);
    if (fdIP < 1) {
        perror(argv[0]);
        return -1;
    }

    src = (uint32_t*)mmap(NULL, DDR_RANGE,PROT_READ|PROT_WRITE, MAP_SHARED, fdIP, TX_BASE_ADDR); 
    dst = (uint32_t*)mmap(NULL, DDR_RANGE,PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, fdIP, RX_BASE_ADDR); 


    memcpy(src,frame1,sizeof(unsigned int)*100);
    

    // Initialize DMA 0
    unsigned int * dma_1_base = dma_init_2ch(fdIP,XPAR_AXI_DMA_0_BASEADDR,TX_BASE_ADDR,RX_BASE_ADDR);
   
    /***************************** Begin looping here *********************/
    auto begin = std::chrono::high_resolution_clock::now();
    bool isFirst = true;
    for (int it=0;it<1;it++){
       
        printf("t1\n");
       
        dma_transmit_data(dma_1_base,sizeof(unsigned int) * 100);
        dma_receive_data(dma_1_base,sizeof(unsigned int) * 100);

        dma_config_print(dma_1_base);

        printf("started\n");

        dma_mm2s_sync(dma_1_base);
        dma_s2mm_sync(dma_1_base);

    }

    auto end = std::chrono::high_resolution_clock::now();
    /***************************** End looping here *********************/

    //Release IP Core
    //backsub_rel(&backsub);



    axilite_release(dma_1_base);

    munmap((void*)src, DDR_RANGE);
    munmap((void*)dst, DDR_RANGE);

    close(fdIP);
     
    printf("Elapsed time : %lld us\n",std::chrono::duration_cast<std::chrono::microseconds>(end-begin).count());

    printf("Device unmapped\n");

    return 0;
}

