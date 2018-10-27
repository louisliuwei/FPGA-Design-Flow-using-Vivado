#include "xparameters.h"
#include "xgpiops.h"

//====================================================

// static XGpioPs psGpioInstancePtr;
// static int iPinNumber_TX = 48; // serial data sent to PC
// static int iPinNumber_RX = 49; // serial data received from PC

int main (void)
{

	  XGpioPs psGpioInstancePtr;
	  int iPinNumber_TX = 15; // serial data sent to PC
	  int iPinNumber_RX = 14; // serial data received from PC
	  XGpioPs_Config*GpioConfigPtr;
	  int xStatus, in1_status, in2_status;
	  int iPinNumberEMIO_TX = 55; // data received from FPGA serial module from this port
	  int iPinNumberEMIO_RX = 54; // data sent to FPGA serial module on this port
	  u32 uPinDirectionEMIO_TX = 0x0; // input from serial module in FPGA
	  u32 uPinDirectionEMIO_RX = 0x1; // output to serial module in FPGA
	  u32 uPinDirection_TX = 0x1;

	  // PS GPIO Intialization
	  GpioConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	  if(GpioConfigPtr == NULL)
	    return XST_FAILURE;
	  xStatus = XGpioPs_CfgInitialize(&psGpioInstancePtr,
	      GpioConfigPtr,
	      GpioConfigPtr->BaseAddr);
	  if(XST_SUCCESS != xStatus)
	    print(" PS GPIO INIT FAILED \n\r");

	  //PS GPIO pin 49 setting to Input
	  XGpioPs_SetDirectionPin(&psGpioInstancePtr, iPinNumber_RX,0);

	  //EMIO PIN 54 Setting to Output port
	  XGpioPs_SetDirectionPin(&psGpioInstancePtr,iPinNumberEMIO_RX,uPinDirectionEMIO_RX);
	  XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, iPinNumberEMIO_RX, 1); // output to PL

	  //EMIO PIN 55 Setting to Input port
	  XGpioPs_SetDirectionPin(&psGpioInstancePtr,iPinNumberEMIO_TX,uPinDirectionEMIO_TX);
	  XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, iPinNumberEMIO_TX, 0); // input from PL

	  //PS GPIO pin 48 setting to Output
	  XGpioPs_SetDirectionPin(&psGpioInstancePtr, iPinNumber_TX,uPinDirection_TX);
	  XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, iPinNumber_TX,1);




	  while (1)
	  {
          // Read from the PC input and send it to the serial module in the FPGA
          in1_status = XGpioPs_ReadPin(&psGpioInstancePtr,iPinNumber_RX);
		  XGpioPs_WritePin(&psGpioInstancePtr,iPinNumberEMIO_RX, in1_status);
          // Read from serial module in the FPGA and send to PC
		  in2_status = XGpioPs_ReadPin(&psGpioInstancePtr,iPinNumberEMIO_TX);
		  XGpioPs_WritePin(&psGpioInstancePtr,iPinNumber_TX, in2_status);
	   }
}


