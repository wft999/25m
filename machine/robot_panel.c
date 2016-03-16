#include <formatio.h>
#include <userint.h>
#include "robot_panel.h"

//==============================================================================
//
// Title:       robot_panel.c
// Purpose:     A short description of the implementation.
//
// Created on:  2014/7/8 at 下午 03:19:25 by wang fang.
// Copyright:   hua. All Rights Reserved.
//
//==============================================================================

//==============================================================================
// Include files

//#include "robot_panel.h"
#include "type.h"

//==============================================================================
// Constants

//==============================================================================
// Types

//==============================================================================
// Static global variables
static int curRobotId;
static RTANK_ID curRid;
//==============================================================================
// Static functions

//==============================================================================
// Global variables

//==============================================================================
// Global functions

int CVICALLBACK SavePosition (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	switch (event)
	{
		case EVENT_COMMIT:
			
			double tmpx,tmpy;
			int state;
			GetCtrlVal (panel, PANEL_RB_CHECKBOX, &state);  
			
			if(CheckAuth(OP_ROBOT) == 0) {
				SetCtrlAttribute(panel,PANEL_RB_SET_POS, ATTR_DIMMED, 1); 
				SetCtrlAttribute(panel,PANEL_RB_SET_LCK, ATTR_DIMMED, 1);
				SetCtrlAttribute(panel,PANEL_RB_SET_SAV_HI, ATTR_DIMMED, 1);
				
				SetCtrlVal (panel, PANEL_RB_CHECKBOX_2, 0); 
				return 0;
			}
			if (!ButtonConfirm (panel,control))	{
				SetCtrlAttribute(panel,PANEL_RB_SET_POS, ATTR_DIMMED, 1); 
				SetCtrlAttribute(panel,PANEL_RB_SET_LCK, ATTR_DIMMED, 1);
				SetCtrlAttribute(panel,PANEL_RB_SET_SAV_HI, ATTR_DIMMED, 1);
				SetCtrlVal (panel, PANEL_RB_CHECKBOX_2, 0);
				return 0;
			}
			
			if(control == PANEL_RB_SET_POS)
			{
				if(state)//maun input
				{
					GetCtrlVal(panel, PANEL_RB_UNLOCKX, &tmpx);
					GetCtrlVal(panel, PANEL_RB_UNLOCKY, &tmpy);
					if(curRid <= sys->rb[curRobotId].lastRid)//tank pos
					{
						if(curRid == sys->rb[curRobotId].firstRid && curRobotId > 0 )//overlap tank  pos
						{
							sys->rtk[curRid].MvPosH2 = tmpx * 10000;
							sys->rtk[curRid].MvPosV2 = tmpy * 10000;
						}
						else //normal tank pos
						{
							sys->rtk[curRid].MvPosH = tmpx * 10000;
							sys->rtk[curRid].MvPosV = tmpy * 10000;
						}	
					}
					else //clean pos
					{
						sys->rb[curRobotId].cleanPosH = tmpx * 10000;
						sys->rb[curRobotId].cleanPosV = tmpy * 10000;
					}	
				}
				else//get plc data
				{
					GetCtrlVal(panel, PANEL_RB_CURR_POS_X, &tmpx);
					GetCtrlVal(panel, PANEL_RB_CURR_POS_Y, &tmpy);
					SetCtrlVal(panel, PANEL_RB_UNLOCKX, tmpx); 
					SetCtrlVal(panel, PANEL_RB_UNLOCKY, tmpy);
					if(curRid <= sys->rb[curRobotId].lastRid)//tank pos
					{
						if(curRid == sys->rb[curRobotId].firstRid && curRobotId > 0 )//overlap tank  pos
						{
							sys->rtk[curRid].MvPosH2 = tmpx * 10000; 
							sys->rtk[curRid].MvPosV2 = tmpy * 10000;
						}
						else //normal tank pos
						{
							sys->rtk[curRid].MvPosH = tmpx * 10000; 
							sys->rtk[curRid].MvPosV = tmpy * 10000;
						}
					}
					else//clean pos
					{
						sys->rb[curRobotId].cleanPosH = tmpx * 10000; 
						sys->rb[curRobotId].cleanPosV = tmpy * 10000;	
					}
				}
				
				if(curRid <= sys->rb[curRobotId].lastRid)
					SavePositionData(curRobotId,curRid,TANK_POS);
				else
					SavePositionData(curRobotId,curRid,CLEAN_POS);
				
				ActionLog(RB_POS_SAVE_ACT_EVENT,curRobotId,0,curRid,0,0); 
			}
			else if(control == PANEL_RB_SET_LCK)
			{
				if(state)//maun input
				{
					GetCtrlVal(panel, PANEL_RB_LOCKX, &tmpx);
					GetCtrlVal(panel, PANEL_RB_LOCKY, &tmpy);
					if(curRid <= sys->rb[curRobotId].lastRid)//tank pos
					{
						if(curRid == sys->rb[curRobotId].firstRid && curRobotId > 0 )//overlap tank  pos
						{
							sys->rtk[curRid].MvLock2 = tmpx * 10000;
							sys->rtk[curRid].MvPosV2 = tmpy * 10000;
							
						}
						else //normal tank pos
						{
							sys->rtk[curRid].MvLock = tmpx * 10000;
							sys->rtk[curRid].MvPosV = tmpy * 10000;
						}	
					}
					else //clean pos
					{
						sys->rb[curRobotId].cleanLock = tmpx * 10000;
						sys->rb[curRobotId].cleanPosV = tmpy * 10000;
					}	
				}
				else//get plc data
				{
					GetCtrlVal(panel, PANEL_RB_CURR_POS_X, &tmpx);
					GetCtrlVal(panel, PANEL_RB_CURR_POS_Y, &tmpy);
					SetCtrlVal(panel, PANEL_RB_LOCKX, tmpx); 
					SetCtrlVal(panel, PANEL_RB_LOCKY, tmpy);
					if(curRid <= sys->rb[curRobotId].lastRid)//tank pos
					{
						if(curRid == sys->rb[curRobotId].firstRid && curRobotId > 0 )//overlap tank  pos
						{
							sys->rtk[curRid].MvLock2 = tmpx * 10000; 
							sys->rtk[curRid].MvPosV2 = tmpy * 10000;
						}
						else //normal tank pos
						{
							sys->rtk[curRid].MvLock = tmpx * 10000; 
							sys->rtk[curRid].MvPosV = tmpy * 10000;
						}
					}
					else//clean pos
					{
						sys->rb[curRobotId].cleanLock = tmpx * 10000; 
						sys->rb[curRobotId].cleanPosV = tmpy * 10000;
					}
				}
				
				if(curRid <= sys->rb[curRobotId].lastRid)
					SavePositionData(curRobotId,curRid,TANK_POS);
				else
					SavePositionData(curRobotId,curRid,CLEAN_POS);
				
				ActionLog(RB_POS_SAVE_ACT_EVENT,curRobotId,1,curRid,0,0); 
				
			}
			else if(control == PANEL_RB_SET_SAV_HI)
			{
				if(state)
				{
					GetCtrlVal(panel, PANEL_RB_SAV_HI, &tmpy);
					sys->rb[curRobotId].safeHight = tmpy * 10000;
				}
				else
				{
					GetCtrlVal(panel, PANEL_RB_CURR_POS_Y, &tmpy);
					SetCtrlVal(panel, PANEL_RB_SAV_HI, tmpy);
					sys->rb[curRobotId].safeHight = tmpy * 10000; 
				}
				
				SavePositionData(curRobotId,curRid,SAFE_POS);
				ActionLog(RB_POS_SAVE_ACT_EVENT,curRobotId,2,0,0,0);
			}
	
			SetCtrlAttribute(panel,PANEL_RB_SET_POS, ATTR_DIMMED, 1); 
			SetCtrlAttribute(panel,PANEL_RB_SET_LCK, ATTR_DIMMED, 1);
			SetCtrlAttribute(panel,PANEL_RB_SET_SAV_HI, ATTR_DIMMED, 1);
			SetCtrlVal (panel, PANEL_RB_CHECKBOX_2, 0);

			break;
	}
	
	return 0;
}

int CVICALLBACK ManualInput (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	switch (event)
	{
		case EVENT_COMMIT:
			if(control == PANEL_RB_CHECKBOX ){
				int state;
				GetCtrlVal (panel, PANEL_RB_CHECKBOX, &state); 
				if(state)
				{
					SetCtrlAttribute (panel, PANEL_RB_UNLOCKX, ATTR_CTRL_MODE,  VAL_NORMAL);
					SetCtrlAttribute (panel, PANEL_RB_UNLOCKY, ATTR_CTRL_MODE,  VAL_NORMAL);
					SetCtrlAttribute (panel, PANEL_RB_LOCKX, ATTR_CTRL_MODE,  VAL_NORMAL); 
					SetCtrlAttribute (panel, PANEL_RB_LOCKY, ATTR_CTRL_MODE,  VAL_NORMAL);

					SetCtrlAttribute (panel, PANEL_RB_SAV_HI, ATTR_CTRL_MODE,  VAL_NORMAL);
				}
				else
				{
					SetCtrlAttribute (panel, PANEL_RB_UNLOCKX, ATTR_CTRL_MODE,  VAL_INDICATOR);
					SetCtrlAttribute (panel, PANEL_RB_UNLOCKY, ATTR_CTRL_MODE,  VAL_INDICATOR);
					SetCtrlAttribute (panel, PANEL_RB_LOCKX, ATTR_CTRL_MODE,  VAL_INDICATOR); 
					SetCtrlAttribute (panel, PANEL_RB_LOCKY, ATTR_CTRL_MODE,  VAL_INDICATOR);

					SetCtrlAttribute (panel, PANEL_RB_SAV_HI, ATTR_CTRL_MODE,  VAL_INDICATOR);
				}
			}else if(control == PANEL_RB_CHECKBOX_2 ){
				int state;
				GetCtrlVal (panel, PANEL_RB_CHECKBOX_2, &state); 
				if(state)
				{
					SetCtrlAttribute(panel,PANEL_RB_SET_POS, ATTR_DIMMED, 0); 
					SetCtrlAttribute(panel,PANEL_RB_SET_LCK, ATTR_DIMMED, 0);
					SetCtrlAttribute(panel,PANEL_RB_SET_SAV_HI, ATTR_DIMMED, 0);
				}
				else
				{
					SetCtrlAttribute(panel,PANEL_RB_SET_POS, ATTR_DIMMED, 1); 
					SetCtrlAttribute(panel,PANEL_RB_SET_LCK, ATTR_DIMMED, 1);
					SetCtrlAttribute(panel,PANEL_RB_SET_SAV_HI, ATTR_DIMMED, 1);
				}
			}
			
			break;
	}
	return 0;
}


int CVICALLBACK RobotManuAdj (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	switch (event)
	{
		case EVENT_LEFT_CLICK:
			if(CheckAuth(OP_ROBOT) == 0)
				return 0;
			
			if(control == PANEL_RB_MOT_ADJ_U)
			{
				resetBit(sys->rb[curRobotId].hsJogSpdY);
				setBit(sys->rb[curRobotId].hsJogPY); 
				resetBit(sys->rb[curRobotId].hsJogNY);
				
				ActionLog(RB_UP_ACT_EVENT,curRobotId,0,0,0,0); 
			}
			else if(control == PANEL_RB_MOT_ADJ_UU)
			{
				setBit(sys->rb[curRobotId].hsJogSpdY);
				setBit(sys->rb[curRobotId].hsJogPY); 
				resetBit(sys->rb[curRobotId].hsJogNY);
				
				ActionLog(RB_UUP_ACT_EVENT,curRobotId,0,0,0,0);
			}
			else if(control == PANEL_RB_MOT_ADJ_D)
			{
				resetBit(sys->rb[curRobotId].hsJogSpdY);
				resetBit(sys->rb[curRobotId].hsJogPY); 
				setBit(sys->rb[curRobotId].hsJogNY);
				
				ActionLog(RB_DOWN_ACT_EVENT,curRobotId,0,0,0,0);
			}
			else if(control == PANEL_RB_MOT_ADJ_DD)
			{
				setBit(sys->rb[curRobotId].hsJogSpdY);
				resetBit(sys->rb[curRobotId].hsJogPY); 
				setBit(sys->rb[curRobotId].hsJogNY);
				
				ActionLog(RB_DDOWN_ACT_EVENT,curRobotId,0,0,0,0);
			}
			////////////////////////////////////////////
			else if(control == PANEL_RB_MOT_ADJ_L)
			{
				resetBit(sys->rb[curRobotId].hsJogSpdX);
				if(curRobotId == RB03)
				{
					resetBit(sys->rb[curRobotId].hsJogPX); 
					setBit(sys->rb[curRobotId].hsJogNX);
				}
				else
				{
					setBit(sys->rb[curRobotId].hsJogPX); 
					resetBit(sys->rb[curRobotId].hsJogNX);	
				}
				ActionLog(RB_LEFT_ACT_EVENT,curRobotId,0,0,0,0);
			}
			else if(control == PANEL_RB_MOT_ADJ_LL)
			{
				setBit(sys->rb[curRobotId].hsJogSpdX);
				if(curRobotId == RB03)
				{
					resetBit(sys->rb[curRobotId].hsJogPX); 
					setBit(sys->rb[curRobotId].hsJogNX);
				}
				else
				{
					setBit(sys->rb[curRobotId].hsJogPX); 
					resetBit(sys->rb[curRobotId].hsJogNX);	
				}
				ActionLog(RB_LLEFT_ACT_EVENT,curRobotId,0,0,0,0);
			}
			else if(control == PANEL_RB_MOT_ADJ_R)
			{
				resetBit(sys->rb[curRobotId].hsJogSpdX);
				if(curRobotId != RB03)
				{
					resetBit(sys->rb[curRobotId].hsJogPX); 
					setBit(sys->rb[curRobotId].hsJogNX);
				}
				else
				{
					setBit(sys->rb[curRobotId].hsJogPX); 
					resetBit(sys->rb[curRobotId].hsJogNX);	
				}
				ActionLog(RB_RIGHT_ACT_EVENT,curRobotId,0,0,0,0);
			}
			else if(control == PANEL_RB_MOT_ADJ_RR)
			{
				setBit(sys->rb[curRobotId].hsJogSpdX);
				if(curRobotId != RB03)
				{
					resetBit(sys->rb[curRobotId].hsJogPX); 
					setBit(sys->rb[curRobotId].hsJogNX);
				}
				else
				{
					setBit(sys->rb[curRobotId].hsJogPX); 
					resetBit(sys->rb[curRobotId].hsJogNX);	
				}
				ActionLog(RB_RRIGHT_ACT_EVENT,curRobotId,0,0,0,0);
			}
			break;
		case EVENT_LEFT_CLICK_UP: 
			resetBit(sys->rb[curRobotId].hsJogSpdX);
			resetBit(sys->rb[curRobotId].hsJogPX);
			resetBit(sys->rb[curRobotId].hsJogNX); 
			
			resetBit(sys->rb[curRobotId].hsJogSpdY);
			resetBit(sys->rb[curRobotId].hsJogPY);
			resetBit(sys->rb[curRobotId].hsJogNY); 

			break;
	}
	return 0;
}

void initRobotPanel(int panel, int rid)
{
	ROBOT* rb = &sys->rb[rid];
	
	curRobotId = rid;
	curRid = rb->firstRid;
	
	char* title[] = {"前段-製程槽","中段-製程槽","後段-製程槽"};
	SetCtrlAttribute(panel,PANEL_RB_TEXTMSG_22, ATTR_CTRL_VAL, title[rid]);
	
	for(int i = rb->firstRid; i <= rb->lastRid; i++)
	{
		//InsertListItem(panel, PANEL_RB_RING, i - rb->firstRid, sys->tk[sys->rtk[i].tid].name, i);
				char tmp[32];
		if(i <= rb->lastRid-1 && sys->rtk[i].tid == sys->rtk[i+1].tid)
		{
			sprintf(tmp,"%s-1", sys->tk[sys->rtk[i].tid].name);
			InsertListItem(panel, PANEL_RB_RING, i - rb->firstRid, tmp, i); 
			i++;
			sprintf(tmp,"%s-2", sys->tk[sys->rtk[i].tid].name);
			InsertListItem(panel, PANEL_RB_RING, i - rb->firstRid, tmp, i);
		}
		else
			InsertListItem(panel, PANEL_RB_RING, i - rb->firstRid, sys->tk[sys->rtk[i].tid].name, i);
	}
	
	if(curRobotId == RB01)
	{
		SetCtrlAttribute(panel,PANEL_RB_CMD_CLEAN, ATTR_VISIBLE, 1);
		InsertListItem(panel, PANEL_RB_RING, rb->lastRid - rb->firstRid + 1, "Clean", rb->lastRid + 1); 
		
		SetCtrlVal(panel, PANEL_RB_UNLOCKX, sys->rtk[rb->firstRid].MvPosH / 10000);
		SetCtrlVal(panel, PANEL_RB_UNLOCKY, sys->rtk[rb->firstRid].MvPosV / 10000);
		SetCtrlVal(panel, PANEL_RB_LOCKX, sys->rtk[rb->firstRid].MvLock / 10000);
		SetCtrlVal(panel, PANEL_RB_LOCKY, sys->rtk[rb->firstRid].MvPosV / 10000);
	}
	else
	{
		SetCtrlVal(panel, PANEL_RB_UNLOCKX, sys->rtk[rb->firstRid].MvPosH2 / 10000);
		SetCtrlVal(panel, PANEL_RB_UNLOCKY, sys->rtk[rb->firstRid].MvPosV2 / 10000);
		SetCtrlVal(panel, PANEL_RB_LOCKX, sys->rtk[rb->firstRid].MvLock2 / 10000);
		SetCtrlVal(panel, PANEL_RB_LOCKY, sys->rtk[rb->firstRid].MvPosV2 / 10000);

	}
	
	SetCtrlVal(panel, PANEL_RB_SAV_HI, rb->safeHight / 10000); 
	SetCtrlAttribute(panel,PANEL_RB_CMD_PUT, ATTR_VISIBLE, 0);
}

int CVICALLBACK tankChange (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	switch (event)
	{
		case EVENT_VAL_CHANGED:
			int tid;
			GetCtrlVal(panel, control, &tid);
			curRid = tid;
			if(tid == sys->rb[curRobotId].firstRid && curRobotId > RB01){
				SetCtrlVal(panel, PANEL_RB_UNLOCKX, sys->rtk[tid].MvPosH2 / 10000);
				SetCtrlVal(panel, PANEL_RB_UNLOCKY, sys->rtk[tid].MvPosV2 / 10000);
				SetCtrlVal(panel, PANEL_RB_LOCKX, sys->rtk[tid].MvLock2 / 10000);
				SetCtrlVal(panel, PANEL_RB_LOCKY, sys->rtk[tid].MvPosV2 / 10000);
			}
			else if(tid > sys->rb[curRobotId].lastRid){
				SetCtrlVal(panel, PANEL_RB_UNLOCKX, sys->rb[curRobotId].cleanPosH / 10000);
				SetCtrlVal(panel, PANEL_RB_UNLOCKY, sys->rb[curRobotId].cleanPosV / 10000);
				SetCtrlVal(panel, PANEL_RB_LOCKX, sys->rb[curRobotId].cleanLock / 10000);
				SetCtrlVal(panel, PANEL_RB_LOCKY, sys->rb[curRobotId].cleanPosV / 10000);
				
			}
			else{
				SetCtrlVal(panel, PANEL_RB_UNLOCKX, sys->rtk[tid].MvPosH / 10000);
				SetCtrlVal(panel, PANEL_RB_UNLOCKY, sys->rtk[tid].MvPosV / 10000);
				SetCtrlVal(panel, PANEL_RB_LOCKX, sys->rtk[tid].MvLock / 10000);
				SetCtrlVal(panel, PANEL_RB_LOCKY, sys->rtk[tid].MvPosV / 10000);
			}
			
			SetCtrlAttribute(panel,PANEL_RB_CMD_PUT, ATTR_VISIBLE, 1);
			SetCtrlAttribute(panel,PANEL_RB_CMD_GET, ATTR_VISIBLE, 1);
			SetCtrlAttribute(panel,PANEL_RB_CMD_MOVE, ATTR_VISIBLE, 1);
				
			if(tid == sys->rb[curRobotId].firstRid)
				SetCtrlAttribute(panel,PANEL_RB_CMD_PUT, ATTR_VISIBLE, 0);
			else if(tid == sys->rb[curRobotId].lastRid)
				SetCtrlAttribute(panel,PANEL_RB_CMD_GET, ATTR_VISIBLE, 0);
			else if(tid > sys->rb[curRobotId].lastRid){
				SetCtrlAttribute(panel,PANEL_RB_CMD_PUT, ATTR_VISIBLE, 0);
				SetCtrlAttribute(panel,PANEL_RB_CMD_GET, ATTR_VISIBLE, 0);
				SetCtrlAttribute(panel,PANEL_RB_CMD_MOVE, ATTR_VISIBLE, 0);
			}
			
			break;
	}
	return 0;
}

void setRobotCommand(ROBOT* rb,RTANK_ID rid, COMMAND_TYPE type)
{
	if(testBit(sys->hsAuto,RB)>0) 
	{
		MessagePopup("Robot is auto","Robot is auto!");
		return;
	}
	
	if(testBit(rb->hsBusyStatus,RB) > 0)
	{
		MessagePopup("Robot is busy","Robot is busy!");
		return;
	}
	if(testBit(rb->hsHomeStatus,RB) == 0 && type != HOME_COMMAND)
	{
		MessagePopup("Robot is not home","Robot is not home!");
		return;
	}
	
	if(ListNumItems(rb->cmdList))
	{
		MessagePopup("Robot is busy","Robot is busy!");
		return;
	}
	
	ROBOT_COMMAND cmd;
	cmd.type = type;
	cmd.tid = sys->rtk[rid].tid;
	cmd.rid = rid;
	cmd.status = MANUAL_STATUS;
	
	ListInsertItem(rb->cmdList,&cmd, END_OF_LIST);

}

int CVICALLBACK RobotCommand (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	switch (event)
	{
		case EVENT_LEFT_CLICK:
			if(CheckAuth(OP_ROBOT) == 0)
				return 0;
			if (!ButtonConfirm (panel,control))		
				return 0;
			switch(control)
			{
				int stat; 
				case PANEL_RB_CMD_PUT:
					if(testBit(sys->rtk[curRid].hsFill,WB) > 0)
					{
						MessagePopup("操作條件不滿足","桶槽內已經有料，不可置料！");
						break;
					}
					if(testBit(sys->rb[curRobotId].hsFill,WB) == 0)
					{
						MessagePopup("操作條件不滿足","夾爪上無料，不可置料！");
						break;
					}
					setRobotCommand(&sys->rb[curRobotId],curRid,PUT_COMMAND);
					ActionLog(RB_PUT_ACT_EVENT,curRobotId,curRid,0,0,0); 
					break;
				case PANEL_RB_CMD_GET:
					if(testBit(sys->rtk[curRid].hsFill,WB) == 0)
					{
						MessagePopup("操作條件不滿足","桶槽內無料，不可取料！");
						break;
					}
					if(testBit(sys->rb[curRobotId].hsFill,WB) > 0)
					{
						MessagePopup("操作條件不滿足","夾爪上已經有料，不可取料！");
						break;
					}
					setRobotCommand(&sys->rb[curRobotId],curRid,GET_COMMAND);
					ActionLog(RB_GET_ACT_EVENT,curRobotId,curRid,0,0,0);
					break;	
				case PANEL_RB_CMD_HOME:
					setRobotCommand(&sys->rb[curRobotId],curRid,HOME_COMMAND);
					ActionLog(RB_HOME_ACT_EVENT,curRobotId,0,0,0,0);
					break;
				case PANEL_RB_CMD_MOVE:
					setRobotCommand(&sys->rb[curRobotId],curRid,MOVE_COMMAND);
					ActionLog(RB_MOVE_ACT_EVENT,curRobotId,curRid,0,0,0);
					break;
				case PANEL_RB_CMD_CLEAN:
					setRobotCommand(&sys->rb[curRobotId],curRid,BLOW_COMMAND);
					ActionLog(RB_CLEAN_ACT_EVENT,curRobotId,0,0,0,0);
					break;


				case PANEL_RB_CHUCK_OFF:
					setBit(sys->rb[curRobotId].hsChuck);
					ActionLog(RB_CHUCK_ACT_EVENT,curRobotId,1,0,0,0);
					break;
				case PANEL_RB_CHUCK_ON:
					resetBit(sys->rb[curRobotId].hsChuck);
					ActionLog(RB_CHUCK_ACT_EVENT,curRobotId,0,0,0,0);
					break;
					
				case PANEL_RB_TEACH_OFF:
					setBit(sys->rb[curRobotId].hsTeach);
					ActionLog(RB_TEACH_ACT_EVENT,curRobotId,1,0,0,0);
					break;
				case PANEL_RB_TEACH_ON:
					resetBit(sys->rb[curRobotId].hsTeach);
					ActionLog(RB_TEACH_ACT_EVENT,curRobotId,0,0,0,0);
					break;
					
				case PANEL_RB_FILL_OFF:
					setBit(sys->rb[curRobotId].hsFill);
					ActionLog(RB_CAR_ACT_EVENT,curRobotId,1,0,0,0);
					break;
				case PANEL_RB_FILL_ON:
					resetBit(sys->rb[curRobotId].hsFill); 
					ActionLog(RB_CAR_ACT_EVENT,curRobotId,0,0,0,0);
					break;
			}
			break;
	}
	return 0;
}

int CVICALLBACK RobotTimer (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	switch (event)
	{
		case EVENT_TIMER_TICK:
			SetCtrlVal(panel, PANEL_RB_CURR_POS_X, sys->rb[curRobotId].curPosX/10000.0);
			SetCtrlVal(panel, PANEL_RB_CURR_POS_Y, sys->rb[curRobotId].curPosY/10000.0);
			
			SetCtrlAttribute(panel,PANEL_RB_CHUCK_OFF, ATTR_VISIBLE, testBit(sys->rb[curRobotId].hsChuck,WB) > 0 ? 0 : 1);
			SetCtrlAttribute(panel,PANEL_RB_CHUCK_ON, ATTR_VISIBLE, testBit(sys->rb[curRobotId].hsChuck,WB) > 0 ? 1 : 0);
			
			SetCtrlAttribute(panel,PANEL_RB_TEACH_OFF, ATTR_VISIBLE, testBit(sys->rb[curRobotId].hsTeach,WB) > 0 ? 0 : 1);
			SetCtrlAttribute(panel,PANEL_RB_TEACH_ON, ATTR_VISIBLE, testBit(sys->rb[curRobotId].hsTeach,WB) > 0 ? 1 : 0);
			
			SetCtrlAttribute(panel,PANEL_RB_FILL_OFF, ATTR_VISIBLE, testBit(sys->rb[curRobotId].hsFill,WB) > 0 ? 0 : 1);
			SetCtrlAttribute(panel,PANEL_RB_FILL_ON, ATTR_VISIBLE, testBit(sys->rb[curRobotId].hsFill,WB) > 0 ? 1 : 0);
			break;
	}
	return 0;
}

