#include <formatio.h>
#include <utility.h>
//==============================================================================
//
// Title:       simulate.c
// Purpose:     A short description of the implementation.
//
// Created on:  2014/7/8 at ¤U¤È 12:50:43 by wang fang.
// Copyright:   hua. All Rights Reserved.
//
//==============================================================================

//==============================================================================
// Include files

//#include "simulate.h"
#include "type.h"
#include "machine.h" 
#ifdef SIMULATE
//==============================================================================
// Constants

//==============================================================================
// Types

//==============================================================================
// Static global variables
extern int panelHandle; 
//==============================================================================
// Static functions

//==============================================================================
// Global variables
extern int g_exitThread; 
//==============================================================================
// Global functions
void setRBit(BIT bt);
void resetRBit(BIT bt);
void setRXBit(BIT bt);
void resetRXBit(BIT bt);
void setRYBit(BIT bt);
void resetRYBit(BIT bt);
void SavePlcWB(void);
void RestorePlcWB(void);

void simulateHome(ROBOT* rb)
{
	setRBit(rb->hsBusyStatus);
	
	if(rb->simStep == 0)
	{
		rb->curPosX += 10000;
		if(rb->curPosX >= 100*10000)
			rb->simStep = 1;
	}
	else
	{
		rb->curPosX -= 10000;
		if(rb->curPosX == 0)
		{
			setRBit(rb->hsHomeStatus);
			resetRBit(rb->hsHome);
			resetRBit(rb->hsBusyStatus); 
			rb->simStep = 0;
		}
	}
}

void simulateGet(ROBOT* rb,RTANK_ID rid)
{
	double MvLock = sys->rtk[rid].MvLock;
	double MvPosH = sys->rtk[rid].MvPosH;
	double MvPosV = sys->rtk[rid].MvPosV;
	
	if(rb->rid > 0 && rid == rb->firstRid)
	{
		MvLock = sys->rtk[rid].MvLock2;
		MvPosH = sys->rtk[rid].MvPosH2;
		MvPosV = sys->rtk[rid].MvPosV2;
	}
	
	setRBit(rb->hsBusyStatus);
	
	if(rb->simStep == 0)
	{
		if(rb->curPosX > MvPosH )
			rb->curPosX -= 100000;
		else if(rb->curPosX < MvPosH )
			rb->curPosX += 100000;
		else
		{
			if(rb->curPosY < MvPosV)
				rb->curPosY += 100000;
			else
				rb->simStep = 1;
		}
	}
	else
	{
		if(rb->curPosX < MvLock )
			rb->curPosX += 100000;
		else
		{
			resetRBit(sys->rtk[rid].hsFill);
			setRBit(rb->hsFill);
			if(rb->rid == RB01 && rid == RTK_01)
			{
				resetRXBit(sys->tk[TANK_01].xPosB3);
				resetRXBit(sys->tk[TANK_01].xPosA3);
			}
				
			if(rb->curPosY > rb->safeHight)
				rb->curPosY -= 100000;
			else
			{
				resetRBit(rb->hsGet);
				resetRBit(rb->hsBusyStatus);
				rb->simStep = 0;
			}
		}
		
	}

}

void simulatePut(ROBOT* rb,RTANK_ID rid)
{
	double MvLock = sys->rtk[rid].MvLock;
	double MvPosH = sys->rtk[rid].MvPosH;
	double MvPosV = sys->rtk[rid].MvPosV;
	
	if(rb->rid > 0 && rid == rb->firstRid)
	{
		MvLock = sys->rtk[rid].MvLock2;
		MvPosH = sys->rtk[rid].MvPosH2;
		MvPosV = sys->rtk[rid].MvPosV2;
	}
	
	setRBit(rb->hsBusyStatus);
	
	if(rb->simStep == 0)
	{
		if(rb->curPosX > MvLock)
			rb->curPosX -= 100000;
		else if(rb->curPosX < MvLock)
			rb->curPosX += 100000;
		else
		{
			if(rb->curPosY < MvPosV)
				rb->curPosY += 100000;
			else
				rb->simStep = 1;
		}
	}
	else
	{
		if(rb->curPosX > MvPosH)
			rb->curPosX -= 10000;
		else
		{
			setRBit(sys->rtk[rid].hsFill);
			resetRBit(rb->hsFill);
			
			if(rb->curPosY > rb->safeHight)
				rb->curPosY -= 100000;
			else
			{
				resetRBit(rb->hsPut);
				resetRBit(rb->hsBusyStatus);
				rb->simStep = 0;
			}
		}
		
	}
}

void simulateGo(ROBOT* rb,RTANK_ID rid)
{
	double MvLock = sys->rtk[rid].MvLock;
	double MvPosH = sys->rtk[rid].MvPosH;
	double MvPosV = sys->rtk[rid].MvPosV;
	
	if(rb->rid > 0 && rid == rb->firstRid)
	{
		MvLock = sys->rtk[rid].MvLock2;
		MvPosH = sys->rtk[rid].MvPosH2;
		MvPosV = sys->rtk[rid].MvPosV2;
	}
	
	setRBit(rb->hsBusyStatus);
	
	if(rb->curPosX > MvPosH)
		rb->curPosX -= 100000;
	else if(rb->curPosX < MvPosH)
		rb->curPosX += 100000;
	else
	{
		resetRBit(rb->hsMove);
		resetRBit(rb->hsBusyStatus);
	}

}

void simulateWash(ROBOT* rb)
{
	setRBit(rb->hsBusyStatus);
	
	setRBit(rb->hsWash);
}

void simulateBlow(ROBOT* rb)
{
	setRBit(rb->hsBusyStatus);
	
	if(rb->simStep == 0)
	{
		if(rb->curPosX > rb->cleanPosH)
			rb->curPosX -= 100000;
		else if(rb->curPosX < rb->cleanPosH)
			rb->curPosX += 100000;
		else
		{
			if(rb->curPosY < rb->cleanPosV)
				rb->curPosY += 100000;
			else
				rb->simStep = 1;
		}
	}
	else
	{
		if(rb->curPosX < rb->cleanLock)
			rb->curPosX += 10000;
		else
		{
			if(rb->curPosY > rb->safeHight)
				rb->curPosY -= 100000;
			else
			{
				resetRBit(rb->hsBlow);
				resetRBit(rb->hsBusyStatus);
				rb->simStep = 0;
			}
		}
		
	}
}

int CVICALLBACK simThread (void *Data)
{
	RestorePlcWB();
	
	int cLop;
	for(cLop = 0; cLop < ROBOT_NUM; cLop++){
		resetRBit(sys->rb[cLop].hsBusyStatus);
		setRBit(sys->rb[cLop].hsHomeStatus);
	}	
	SetCtrlAttribute(panelHandle,PANEL_BINARYSWITCH,ATTR_VISIBLE ,1);
	
	while (g_exitThread == 0){
		Delay(0.1);	
		
		int val;
		GetCtrlVal(panelHandle,PANEL_BINARYSWITCH,&val);
		if(val)
		{
			setRBit(sys->hsAuto);
			resetRBit(sys->hsManu); 
		}
		else
		{
			resetRBit(sys->hsAuto);
			setRBit(sys->hsManu);
		}
		
		for(cLop = 0; cLop < ROBOT_NUM; cLop++){
			if(sys->rb[cLop].write2Plc){
				sys->rb[cLop].write2Plc = 0;
			}
			
			if(testBit(sys->rb[cLop].hsSetCommandData,WB)>0 )
				setRBit(sys->rb[cLop].hsSetCommandData); 
			else
				resetRBit(sys->rb[cLop].hsSetCommandData);
			
			if(testBit(sys->rb[cLop].hsHome,WB)>0 )
				setRBit(sys->rb[cLop].hsHome); 
			
			if(testBit(sys->rb[cLop].hsGet,WB)>0 )
				setRBit(sys->rb[cLop].hsGet); 
			
			if(testBit(sys->rb[cLop].hsPut,WB)>0 )
				setRBit(sys->rb[cLop].hsPut); 
			
			if(testBit(sys->rb[cLop].hsMove,WB)>0 )
				setRBit(sys->rb[cLop].hsMove); 
			
			if(testBit(sys->rb[cLop].hsBlow,WB)>0 )
				setRBit(sys->rb[cLop].hsBlow); 
			
			if(testBit(sys->rb[cLop].hsWash,WB)>0 )
				setRBit(sys->rb[cLop].hsWash); 	  
			
			/////////////////////////////////////////////////////////////////////
			ROBOT_COMMAND cmd;
			ListGetItem (sys->rb[cLop].cmdList, &cmd, FRONT_OF_LIST);
			
			if(testBit(sys->rb[cLop].hsHome,RB)>0 )
				simulateHome(&sys->rb[cLop]); 
			
			if(testBit(sys->rb[cLop].hsGet,RB)>0 )
				simulateGet(&sys->rb[cLop],cmd.rid);  
			
			if(testBit(sys->rb[cLop].hsPut,RB)>0 )
				simulatePut(&sys->rb[cLop],cmd.rid);  
			
			if(testBit(sys->rb[cLop].hsMove,RB) >0)
				simulateGo(&sys->rb[cLop],cmd.rid);  
			
			if(testBit(sys->rb[cLop].hsBlow,RB) >0)
				simulateBlow(&sys->rb[cLop]);  
			
			if(testBit(sys->rb[cLop].hsWash,RB) >0)
				simulateWash(&sys->rb[cLop]); 

		}
		
		/////////////////////////////////////
		//load 
		if(testBit(sys->rtk[RTK_01].hsPermitGet,WB) > 0 )
		{
			setRXBit(sys->tk[TANK_01].xPosB3);
			setRXBit(sys->tk[TANK_01].xPosA3);
			setRBit(sys->rtk[RTK_01].hsPermitGet);
			setRBit(sys->rtk[RTK_01].hsFill);
		}
		else
		{
			resetRBit(sys->rtk[RTK_01].hsPermitGet);	
		}
		
		setRBit(sys->rtk[RTK_17].hsPermitPut); 
		if(testBit(sys->rtk[RTK_17].hsFill,RB)>0)
			resetRBit(sys->rtk[RTK_17].hsFill ); 
		
		//setRBit(sys->rtk[RTK_16].hsPermitPut);
	//	setRBit(sys->rtk[RTK_16].hsPermitGet);
	
	}
	SavePlcWB();
	return 0;
}

#endif
