#include <unistd.h>
#include <stdint.h>
#include <stddef.h>

/* Driver Header files */
#include <ti/drivers/GPIO.h>
#include <ti/drivers/SPI.h>
#include <ti/drivers/spi/SPICC26XXDMA.h>
#include <ti/drivers/dma/UDMACC26XX.h>
#include <ti/drivers/Power.h>
#include <ti/drivers/power/PowerCC26XX.h>
#include <ti/drivers/pin/PINCC26XX.h>


/* Driver configuration */
#include "ti_drivers_config.h"


#define BUFSIZE 10

/*
 * mainThread
 */
void *mainThread(void *arg0)
{

    SPI_init();

    SPI_Handle  spi;
    SPI_Params spiParams;
    SPI_Transaction spiTransaction;
    uint16_t        transmitBuffer[BUFSIZE];
    uint16_t        receiveBuffer[BUFSIZE];
    bool            transferOK;

    SPI_Params_init(&spiParams);
    spiParams.transferMode = SPI_MODE_BLOCKING;
    spiParams.dataSize = 16;
    spiParams.bitRate     = 1000000;
    spiParams.frameFormat = SPI_POL1_PHA1;  //change
    spiParams.mode = SPI_CONTROLLER;


    spiTransaction.count = sizeof(transmitBuffer);
    spiTransaction.txBuf = transmitBuffer;
    spiTransaction.rxBuf = receiveBuffer;

    spi = SPI_open(CONFIG_SPI_0, &spiParams);
    transferOK = SPI_transfer(spi, &spiTransaction);
    if (!transferOK) {
          while(1);
    }

}
