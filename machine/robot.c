#include <formatio.h>
#include "inifile.h"
#include <utility.h>
//==============================================================================
//
// Title:       robot.c
// Purpose:     A short description of the implementation.
//
// Created on:  2014/7/4 at ¤U¤È 06:03:51 by wang fang.
// Copyright:   hua. All Rights Reserved.
//
//==============================================================================

//==============================================================================
// Include files

#include "type.h"

//==============================================================================
// Constants
#define DELAY_TIME 0.5 
#define isNotInRange(a,b) (a > (b+1000000) ||  a < (b-1000000))
//==============================================================================
// Types

//==============================================================================
// Static global variables

//==============================================================================
// Static functions

//==============================================================================
// Global variables
extern int 		g_updatePos;
extern ROBOT_ID	g_updatePosRBid;
extern RTANK_ID	g_updatePosRTid;
extern POS_TYPE	g_updatePosType;

extern int g_setupDosing;
//==============================================================================
// Global functions
int can_load_sc()
{
	double tm;
	GetCurrentDateTime(&tm);
	if(sys->tk[TANK_04].autoMakeStep!= 0 && sys->tk[TANK_07].rcp.ProcTM <= 0)
		return 0;
	if(sys->tk[TANK_07].autoMakeStep!= 0 && sys->tk[TANK_04].rcp.ProcTM <= 0)
		return 0;
	if(sys->tk[TANK_04].autoMakeStep!= 0 && sys->tk[TANK_07].autoMakeStep != 0)
		return 0;
	if(sys->tk[TANK_02].autoMakeStep != 0)
		return 0;
	if(sys->tk[TANK_11].autoMakeStep != 0)
		return 0;
	
	int count = 0;
	if(testBit(sys->rtk[RTK_04_01].hsFill,WB) > 0 && (tm + 60) > (sys->rtk[RTK_04_01].car.iPrcTM[TANK_04] + sys->tk[TANK_04].rcp.ProcTM ))
		count++;
	if(testBit(sys->rtk[RTK_04_02].hsFill,WB) > 0 && (tm + 60) > (sys->rtk[RTK_04_02].car.iPrcTM[TANK_04] + sys->tk[TANK_04].rcp.ProcTM ))
		count++;
	if(testBit(sys->rtk[RTK_05_01].hsFill,WB) > 0 && (tm  + 60) > (sys->rtk[RTK_05_01].car.iPrcTM[TANK_05] + sys->tk[TANK_05].rcp.ProcTM ))
		count++;
	if(testBit(sys->rtk[RTK_05_02].hsFill,WB) > 0 && (tm + 60) > (sys->rtk[RTK_05_02].car.iPrcTM[TANK_05] + sys->tk[TANK_05].rcp.ProcTM ))
		count++;
	if(testBit(sys->rtk[RTK_07_01].hsFill,WB) > 0 && (tm + 60) > (sys->rtk[RTK_07_01].car.iPrcTM[TANK_07] + sys->tk[TANK_07].rcp.ProcTM ))
		count++;
	if(testBit(sys->rtk[RTK_07_02].hsFill,WB) > 0 && (tm + 60) > (sys->rtk[RTK_07_02].car.iPrcTM[TANK_07] + sys->tk[TANK_07].rcp.ProcTM ))
		count++;
	if(testBit(sys->rtk[RTK_08_01].hsFill,WB) > 0 && (tm + 60) > (sys->rtk[RTK_08_01].car.iPrcTM[TANK_08] + sys->tk[TANK_08].rcp.ProcTM ))
		count++;
	if(testBit(sys->rtk[RTK_08_02].hsFill,WB) > 0 && (tm + 60) > (sys->rtk[RTK_08_02].car.iPrcTM[TANK_08] + sys->tk[TANK_08].rcp.ProcTM ))
		count++;
	
	if(count >= 3)
		return 0;
	

    if(testBit(sys->rtk[RTK_03_01].hsFill,WB) == 0 && sys->tk[TANK_03].rcp.ProcTM > 0) 
    {
        if(testBit(sys->rtk[RTK_03_02].hsFill,WB) > 0 && (testBit(sys->rtk[RTK_02_01].hsFill,WB) > 0||testBit(sys->rtk[RTK_02_02].hsFill,WB) > 0))
            return 0;
    }
    if(testBit(sys->rtk[RTK_03_02].hsFill,WB) == 0 && sys->tk[TANK_03].rcp.ProcTM > 0) 
    {
        if(testBit(sys->rtk[RTK_03_01].hsFill,WB) > 0 && (testBit(sys->rtk[RTK_02_01].hsFill,WB) > 0||testBit(sys->rtk[RTK_02_02].hsFill,WB) > 0))
            return 0;
    }
  
	if(testBit(sys->rtk[RTK_04_01].hsFill,WB) == 0 && sys->tk[TANK_04].rcp.ProcTM > 0)
        return 1;
    else if(testBit(sys->rtk[RTK_04_02].hsFill,WB) == 0 && sys->tk[TANK_04].rcp.ProcTM > 0)
        return 1;
    else if(testBit(sys->rtk[RTK_05_01].hsFill,WB) == 0 && sys->tk[TANK_05].rcp.ProcTM > 0)
        return 1;
    else if(testBit(sys->rtk[RTK_05_02].hsFill,WB) == 0 && sys->tk[TANK_05].rcp.ProcTM > 0)
        return 1;
    else if(testBit(sys->rtk[RTK_07_01].hsFill,WB) == 0 && sys->tk[TANK_07].rcp.ProcTM > 0)
        return 1;
    else if(testBit(sys->rtk[RTK_07_02].hsFill,WB) == 0 && sys->tk[TANK_07].rcp.ProcTM > 0)
        return 1;
    else if(testBit(sys->rtk[RTK_08_01].hsFill,WB) == 0 && sys->tk[TANK_08].rcp.ProcTM > 0)
        return 1;
    else if(testBit(sys->rtk[RTK_08_02].hsFill,WB) == 0 && sys->tk[TANK_08].rcp.ProcTM > 0)
        return 1;
	else if(sys->tk[TANK_04].rcp.ProcTM == 0 && sys->tk[TANK_05].rcp.ProcTM == 0 && sys->tk[TANK_07].rcp.ProcTM == 0 && sys->tk[TANK_08].rcp.ProcTM == 0)
		return 1;
	else 
		return 0;
    
}

void LogRoobotEvent(ROBOT* rb,ROBOT_EVENT_TYPE etype, ROBOT_COMMAND cmd)
{
	LOG log;
	log.type = ROBOT_LOG;
	log.robot.cmd = cmd;
	log.robot.etype = etype;
	log.robot.rid = rb->rid;

	GetCurrentDateTime(&log.tm);
	PutLogToQueue(&log, 1);
	
}

int isTankReady(TANK_ID tid)
{
	double cTM;
	GetCurrentDateTime ( &cTM);
//	if(sys->tk[tid].lifeTime <= cTM)
//		return 0;
	if(sys->tk[tid].lifeRun <= 0)
		return 0;
	
	if(testBit(sys->tk[tid].xTempH,RX) == 0)
		return 0;
	if(testBit(sys->tk[tid].xTempL,RX) == 0)
		return 0;
	
	if(testBit(sys->tk[tid].xLevUP,RX) == 0)
		return 0;
	else if(testBit(sys->tk[tid].xLevUP,RX) == -1)
	{
		if(testBit(sys->tk[tid].xLevLL,RX) == 0)
			return 0;
		
		if(testBit(sys->tk[tid].xLevL,RX) == 0)
			return 0;
		
		if(testBit(sys->tk[tid].xLevL,RX) == -1)
		{
			if(testBit(sys->tk[tid].xLevH,RX) == 0)
				return 0;
		}
		
	}

	return 1;
}

int isPermitPut(ROBOT* rb, RTANK_ID rid)
{
	if(sys->tk[sys->rtk[rid].tid].rcp.ProcTM <= 0)
		return 0;
	
	if(rid != RTK_16 && testBit(sys->rtk[rid].hsPermitPut,RB) == 0)
		return 0;
	
	if(rid == RTK_16 && testBit(sys->rtk[rid].hsPermitPut,RB) > 0)
		return 0;
	
	if(isTankReady(sys->rtk[rid].tid) == 0)
		return 0;
	
	if(testBit(sys->rtk[rid].hsFill,WB)  != 0)
		return 0;
	
	return 1;
}


		  
int searchPutTank(ROBOT* rb, RTANK_ID grid)
{
	RTANK_ID prid = grid+1;
	
	if(grid == RTK_01 && can_load_sc() == 0)
		return 0;

	if(rb->rid == RB02 && grid == RTK_06 && sys->rtk[grid].car.isTexured == 1)//for 25m
	{
		prid = RTK_09;
	}
	
	while(prid <= rb->lastRid && sys->rtk[prid].group == sys->rtk[grid].group)
		prid++;
	while(prid <= rb->lastRid && sys->tk[sys->rtk[prid].tid].rcp.ProcTM == 0)
		prid++;
	
	if(prid > rb->lastRid)
		return 0;
	
	if(prid == RTK_04_01 || prid == RTK_04_02)
		return 0;
	
	//////////////////////////////////////////////////////////////////////
	if(prid == RTK_04_01 && sys->tk[TANK_07].rcp.ProcTM > 0 && isPermitPut(&sys->rb[0], RTK_06) > 0)
	{
		if(isPermitPut(&sys->rb[1], RTK_08_01) > 0 || isPermitPut(&sys->rb[1], RTK_08_02) > 0 || isPermitPut(&sys->rb[1], RTK_07_02) > 0 || isPermitPut(&sys->rb[1], RTK_07_01) > 0)
			return RTK_06;
	}
	
	if(prid == RTK_07_01 || prid == RTK_07_02 || prid == RTK_08_01 || prid == RTK_08_02)
	{
		if(isPermitPut(&sys->rb[1], RTK_08_02) > 0)
			return RTK_08_02;
		if(isPermitPut(&sys->rb[1], RTK_08_01) > 0)
			return RTK_08_01;
		if(isPermitPut(&sys->rb[1], RTK_07_02) > 0)
			return RTK_07_02;
		if(isPermitPut(&sys->rb[1], RTK_07_01) > 0)
			return RTK_07_01;
		
	}
	else if(prid == RTK_04_01 || prid == RTK_04_02 || prid == RTK_05_01 || prid == RTK_05_02)
	{
		if(isPermitPut(&sys->rb[0], RTK_05_02) > 0)
			return RTK_05_02;
		if(isPermitPut(&sys->rb[0], RTK_05_01) > 0)
			return RTK_05_01;
		if(isPermitPut(&sys->rb[0], RTK_04_02) > 0)
			return RTK_04_02;
		if(isPermitPut(&sys->rb[0], RTK_04_01) > 0)
			return RTK_04_01;
		
	}
	//////////////////////////////////////////////////////////////////////
	
	if(isPermitPut(rb, prid) == 0 )
	{
		prid++;
		while(prid <= rb->lastRid && sys->rtk[prid-1].group == sys->rtk[prid].group)
		{
			if(sys->tk[sys->rtk[prid].tid].rcp.ProcTM == 0)
			{
				prid++;
				continue;
			}
			
			if(isPermitPut(rb, prid) == 0)
			{
				prid++;
				continue;
			}
			
			return prid;
				
		}
		
		if(rb->rid == RB01 && prid == RTK_06)//for 25m  to TEX-B
		{
			if(isPermitPut(rb, prid) == 0) 
				return 0;
			
			if(sys->tk[TANK_07].rcp.ProcTM > 0 && isPermitPut(&sys->rb[1], RTK_07_01) > 0)
			{
				return prid;
			}
			if(sys->tk[TANK_07].rcp.ProcTM > 0 && isPermitPut(&sys->rb[1], RTK_07_02) > 0)
			{
				return prid;
			}
			if(sys->tk[TANK_08].rcp.ProcTM > 0 && isPermitPut(&sys->rb[1], RTK_08_01) > 0)
			{
				return prid;
			}
			if(sys->tk[TANK_08].rcp.ProcTM > 0 && isPermitPut(&sys->rb[1], RTK_08_02) > 0)
			{
				return prid;
			} 

		}  
		
		return 0;
	}
	else if(sys->rtk[prid-1].isOverlap == 1)
	{
		RTANK_ID nprid = prid;
		nprid++;
		while(nprid <= rb->lastRid && sys->rtk[nprid].group == sys->rtk[prid].group)
		{
			if(sys->tk[sys->rtk[nprid].tid].rcp.ProcTM == 0)
			{
				nprid++;
				continue;
			}
			
			if(isPermitPut(rb, nprid) == 0)
			{
				nprid++;
				continue;
			}
			
			return nprid;
				
		}		
	} 



	return prid;
}

void serachGetTank(ROBOT* rb)
{
	RTANK_ID res_grid = RTK_UNKNOW;
	RTANK_ID res_prid = RTK_UNKNOW;
	
	double tm;
	GetCurrentDateTime(&tm);
	
	int total = ListNumItems(rb->rtkPriList);	
	for(int i = 1; i <= total; i++)
	{
		RTANK_ID grid;
		ListGetItem (rb->rtkPriList, &grid, i);
		
		TANK_ID gtid = sys->rtk[grid].tid;
		
		if(testBit(sys->rtk[grid].hsFill,WB) <= 0)
			continue;
		if(sys->rtk[grid].car.iPrcTM[gtid] <= 0)
		{
			sys->rtk[grid].car.iPrcTM[gtid] = tm;
			continue;
		}
		if(grid != RTK_16 && testBit(sys->rtk[grid].hsPermitGet,RB) == 0 )
			continue;
		if(grid == RTK_16 && testBit(sys->rtk[grid].hsPermitGet,RB) > 0 )
			continue;
		
		if((tm + sys->tk[gtid].rcp.PreGetTM) < (sys->rtk[grid].car.iPrcTM[gtid] + sys->tk[gtid].rcp.ProcTM ))
		{
			if(grid != RTK_06 && grid != RTK_01)//for 25m
				continue;
		}
	
		RTANK_ID prid = searchPutTank(rb, grid);
		if(prid == 0)
		{
			continue;
		}
		
		if(res_grid == RTK_UNKNOW)
		{
			res_grid = grid;
			res_prid = prid;
		}
		else
		{
			if(sys->rtk[grid].group == sys->rtk[res_grid].group)
			{
				if(sys->rtk[grid].car.iPrcTM[gtid] < sys->rtk[res_grid].car.iPrcTM[sys->rtk[res_grid].tid])
				{
					res_prid = prid; 
					res_grid = grid;
				}
			}
			else
				break;
		}
	}
	
	if(res_grid !=  RTK_UNKNOW)
	{
		if(sys->rtk[res_grid].cmdBeforeGet.type != UNKNOW_COMMAND && rb->isDirty == 1)
		{
			ListInsertItem(rb->cmdList,&sys->rtk[res_grid].cmdBeforeGet, END_OF_LIST);		
		}
			
		ROBOT_COMMAND cmd;
		cmd.tid = sys->rtk[res_grid].tid;
		cmd.rid = res_grid;
		cmd.type = GET_COMMAND;
		cmd.status = AUTO_STATUS;
		ListInsertItem(rb->cmdList,&cmd, END_OF_LIST);
			
		cmd.tid = sys->rtk[res_prid].tid;
		cmd.rid = res_prid;
		cmd.type = PUT_COMMAND;
		cmd.status = AUTO_STATUS;
		ListInsertItem(rb->cmdList,&cmd, END_OF_LIST);
			
		if(sys->rtk[res_prid].cmdAfterPut.type != UNKNOW_COMMAND)
			ListInsertItem(rb->cmdList,&sys->rtk[res_prid].cmdAfterPut, END_OF_LIST);
	}
}

int isRobotSafePos2(ROBOT* rb,int isBegin)
{
	if(isBegin)
		return rb->curPosX <= sys->rtk[rb->firstRid + 2].MvPosH;
	else
	{
		if(rb->rid == RB01)
			return rb->curPosX <= sys->rtk[rb->lastRid - 2].MvLock;
		else
			return rb->curPosX >= sys->rtk[rb->lastRid - 2].MvLock;
	}
}

int isRobotSafePos(ROBOT* rb,int isBegin)
{
	if(isBegin)
		return rb->curPosX <= sys->rtk[rb->firstRid+1].MvPosH;
	else
	{
		if(rb->rid == RB01)
			return rb->curPosX <= sys->rtk[rb->lastRid - 1].MvLock;
		else
			return rb->curPosX >= sys->rtk[rb->lastRid - 1].MvLock;
	}
}

int GetTankLock(ROBOT* rb, ROBOT_COMMAND cmd)
{
	if(cmd.type == GET_COMMAND )
	{
		if(sys->rtk[cmd.rid].isOverlap == 1 )
		{
			int obtainedLock;
			CmtTryToGetLock(sys->rtk[cmd.rid].collisionLock, &obtainedLock);
			if(obtainedLock != 1)
				return 0;
			
			CmtTryToGetLock(sys->rtk[cmd.rid-1].collisionLock, &obtainedLock);
			if(obtainedLock != 1)
			{
				CmtReleaseLock(sys->rtk[cmd.rid].collisionLock);
				return 0;
			}
			
			if(isRobotSafePos2(rb-1,0) == 0)
			{
				CmtReleaseLock(sys->rtk[cmd.rid].collisionLock);
				CmtReleaseLock(sys->rtk[cmd.rid-1].collisionLock);
				return 0;
			}
		}
		
		if(cmd.rid < RTANK_NUM - 1 && sys->rtk[cmd.rid + 1].isOverlap == 1)
		{
			int obtainedLock;
			CmtTryToGetLock(sys->rtk[cmd.rid + 1].collisionLock, &obtainedLock);
			if(obtainedLock != 1)
				return 0;
			
			if(isRobotSafePos(rb+1,1) == 0)
			{
				CmtReleaseLock(sys->rtk[cmd.rid+1].collisionLock);
				return 0;
			}
		}
		
		if(cmd.rid > 0 && sys->rtk[cmd.rid - 1].isOverlap == 1)
		{
			int obtainedLock;
			CmtTryToGetLock(sys->rtk[cmd.rid].collisionLock, &obtainedLock);
			if(obtainedLock != 1)
				return 0;
			
			if(isRobotSafePos(rb-1,0) == 0)
			{
				CmtReleaseLock(sys->rtk[cmd.rid].collisionLock);
				return 0;
			}
		}
	
	}
	else if(cmd.type == PUT_COMMAND)
	{
		if(sys->rtk[cmd.rid].isOverlap == 1 )
		{
			int obtainedLock;
			CmtTryToGetLock(sys->rtk[cmd.rid].collisionLock, &obtainedLock);
			if(obtainedLock != 1)
				return 0;
			
			CmtTryToGetLock(sys->rtk[cmd.rid+1].collisionLock, &obtainedLock);
			if(obtainedLock != 1)
			{
				CmtReleaseLock(sys->rtk[cmd.rid].collisionLock);
				return 0;
			}
			
			if(isRobotSafePos2(rb+1,1) == 0)
			{
				CmtReleaseLock(sys->rtk[cmd.rid].collisionLock);
				CmtReleaseLock(sys->rtk[cmd.rid+1].collisionLock);
				return 0;
			}
		}
		
		if(cmd.rid < RTANK_NUM - 1 && sys->rtk[cmd.rid + 1].isOverlap == 1)
		{
			int obtainedLock;
			CmtTryToGetLock(sys->rtk[cmd.rid].collisionLock, &obtainedLock);
			if(obtainedLock != 1)
				return 0;
			
			if(isRobotSafePos(rb+1,1) == 0)
			{
				CmtReleaseLock(sys->rtk[cmd.rid].collisionLock);
				return 0;
			}
		}
		
		if(cmd.rid > 0 && sys->rtk[cmd.rid - 1].isOverlap == 1)
		{
			int obtainedLock;
			CmtTryToGetLock(sys->rtk[cmd.rid-1].collisionLock, &obtainedLock);
			if(obtainedLock != 1)
				return 0;
			
			if(isRobotSafePos(rb-1,0) == 0)
			{
				CmtReleaseLock(sys->rtk[cmd.rid-1].collisionLock);
				return 0;
			}
		}
	}
	
	return 1;
}

int safeCheck(ROBOT* rb, ROBOT_COMMAND cmd)
{
	if(testBit(rb->hsBusyStatus,RB) > 0)
		return 0;
	
	if(testBit(rb->hsHomeStatus,RB) == 0 && cmd.type != HOME_COMMAND)
	{

		return 0;
	}
	
	if(cmd.type == UNKNOW_COMMAND)
	{

		return 0;
	}
	else if(cmd.type == GET_COMMAND )
	{
		if(testBit(rb->hsFill,WB) > 0 || testBit(sys->rtk[cmd.rid].hsFill,WB) == 0)
			return 0;

		
		if(testBit(sys->tk[sys->rtk[cmd.rid].tid ].xShutOpen,RX) > 0 && testBit(sys->tk[sys->rtk[cmd.rid].tid ].xShutClose,RX) > 0)  //for check shutter
			return 0;
		if(testBit(sys->tk[sys->rtk[cmd.rid].tid ].xShutOpen,RX) == 0 && testBit(sys->tk[sys->rtk[cmd.rid].tid ].xShutClose,RX) == 0)
			return 0;
	}
	else if(cmd.type == PUT_COMMAND)
	{
		if(testBit(rb->hsFill,WB) == 0 || testBit(sys->rtk[cmd.rid].hsFill,WB) > 0) 
		{
			return 0;
		}
		
		if(testBit(sys->tk[sys->rtk[cmd.rid].tid ].xShutOpen,RX) > 0 && testBit(sys->tk[sys->rtk[cmd.rid].tid ].xShutClose,RX) > 0)  //for check shutter
			return 0;
		if(testBit(sys->tk[sys->rtk[cmd.rid].tid ].xShutOpen,RX) == 0 && testBit(sys->tk[sys->rtk[cmd.rid].tid ].xShutClose,RX) == 0)
			return 0;
	}
	else if(cmd.type == MOVE_COMMAND)
	{
		if(cmd.status == AUTO_STATUS && (cmd.rid == RTK_05_02 || cmd.rid == RTK_06 || cmd.rid == RTK_07_01 || cmd.rid == RTK_11_02 || cmd.rid == RTK_12 || cmd.rid == RTK_13_01)) 
		{
			return 0;
		}
	}
	else
	{
		if(testBit(rb->hsFill,WB) > 0)
		{
			return 0;
		}
	} 
	 
	return 1;
}

int isAbortCommand(ROBOT* rb)
{
	if(rb->resetCommand == 1 || rb->exitThread == 1)
	{
		return 1;
	}
	
	return 0;
}

void ReleaseTankLock(ROBOT_COMMAND cmd)
{
	if(cmd.type == GET_COMMAND)
	{
		if(sys->rtk[cmd.rid].isOverlap == 1) 
		{
			CmtReleaseLock(sys->rtk[cmd.rid].collisionLock);
			CmtReleaseLock(sys->rtk[cmd.rid-1].collisionLock);
		}
		else if(cmd.rid < RTANK_NUM - 1 && sys->rtk[cmd.rid + 1].isOverlap == 1) 
			CmtReleaseLock(sys->rtk[cmd.rid+1].collisionLock);
		else if(cmd.rid > 0 && sys->rtk[cmd.rid - 1].isOverlap == 1)
			CmtReleaseLock(sys->rtk[cmd.rid].collisionLock);
	}
	else if(cmd.type == PUT_COMMAND)
	{
		if(sys->rtk[cmd.rid].isOverlap == 1) 
		{
			CmtReleaseLock(sys->rtk[cmd.rid].collisionLock);
			CmtReleaseLock(sys->rtk[cmd.rid+1].collisionLock);
		}
		else if(cmd.rid < RTANK_NUM - 1 && sys->rtk[cmd.rid + 1].isOverlap == 1) 
			CmtReleaseLock(sys->rtk[cmd.rid].collisionLock);
		else if(cmd.rid > 0 && sys->rtk[cmd.rid - 1].isOverlap == 1)
			CmtReleaseLock(sys->rtk[cmd.rid-1].collisionLock);
	}	
}

void cancelRobotCommand(ROBOT* rb)
{
	ROBOT_COMMAND cmd;
	ListGetItem (rb->cmdList, &cmd, FRONT_OF_LIST);	

	LogRoobotEvent(rb,CANCEL_ROBOT_EVENT,cmd); 
//	if(cmd.type != PUT_COMMAND) 
		ListClear(rb->cmdList); 
	
	rb->resetCommand = 0;
}


void searchMoveTank(ROBOT* rb)
{
	if(ListNumItems(rb->cmdList) > 0)
		return;
	
	RTANK_ID defid = rb->standbyRid;
	
	double minTM;
	GetCurrentDateTime(&minTM);
	minTM += 20;
	
	int total = ListNumItems(rb->rtkPriList);	
	for(int i = 1; i <= total; i++)
	{
		TANK_ID		tid;
		RTANK_ID	rid;
		
		ListGetItem (rb->rtkPriList, &rid, i);
		tid = sys->rtk[rid].tid;
		
		if(testBit(sys->rtk[rid].hsFill,WB) <= 0)
			continue;
		if(sys->rtk[rid].car.iPrcTM[tid] <= 0)
			continue;
		if((sys->rtk[rid].car.iPrcTM[tid] + sys->tk[tid].rcp.ProcTM - sys->tk[tid].rcp.PreGetTM) > minTM)
			continue;
		
		unsigned int prid = searchPutTank(rb, rid);
		if(prid == 0)
			continue;

		minTM = sys->rtk[rid].car.iPrcTM[tid] + sys->tk[tid].rcp.ProcTM - sys->tk[tid].rcp.PreGetTM;
		
		if(sys->rtk[rid].isOverlap == 1)//for 25m
			defid = rid + 2;  
		else if(rid > 0 && sys->rtk[rid-1].isOverlap == 1)
			defid = rid + 1; 
		else if(rid < RTANK_NUM-1 && sys->rtk[rid+1].isOverlap == 1)
			defid = rid - 1; 
		else
			defid = rid;
	}	
	
	if(sys->rtk[defid].cmdBeforeGet.type != UNKNOW_COMMAND && rb->isDirty == 1)
	{
		ListInsertItem(rb->cmdList,&sys->rtk[defid].cmdBeforeGet, END_OF_LIST); 	
	}
	
	if(isNotInRange(rb->curPosX , sys->rtk[defid].MvPosH) )
	{
		ROBOT_COMMAND cmd;
		cmd.tid = sys->rtk[defid].tid;
		cmd.rid = defid;
		cmd.type = MOVE_COMMAND;
		cmd.status = AUTO_STATUS;
		ListInsertItem(rb->cmdList,&cmd, END_OF_LIST);
	}	
}

void changDosingByRun(TANK_ID tid,int carNumber)
{
	if(tid != TANK_02 && tid != TANK_04 && tid != TANK_07 && tid != TANK_11)
		return;
	
	int bFound = 0;
	for(int i = 0; i < 4; i++)
	{
		int total = ListNumItems(sys->tk[tid].rcp.DosList[i]);
		for(int t = 0; t < total; t++)
		{
			DosSetting ds;
			ListGetItem (sys->tk[tid].rcp.DosList[i], &ds, t+1);
			if(carNumber == ds.round)
			{
				if(i == 0)
					sys->tk[tid].rcp.DosCH1 = ds.amount;
				else if(i == 1)
					sys->tk[tid].rcp.DosCH2 = ds.amount;
				else if(i == 2)
					sys->tk[tid].rcp.DosCH3 = ds.amount;
				else if(i == 3)
					sys->tk[tid].rcp.DosCH4 = ds.amount;
				
				bFound = 1;
				
				break;	
			}

		}
	}
	
	if(bFound)
		g_setupDosing = 1;
}

void WorkByRun(TANK_ID tid)
{
//	if(testBit(sys->hsAuto,RB) == 0)
//		return;
	if(sys->rcp.isReady == 0)
		return;
	
	int carNumber = sys->tk[tid].carNumber;
	
	if(tid == TANK_04)
	{
		carNumber += sys->tk[TANK_05].carNumber; 
	}
	else if(tid == TANK_05)
	{
		tid = TANK_04;
		carNumber += sys->tk[TANK_04].carNumber; 
	}
	else if(tid == TANK_07)
	{
		carNumber += sys->tk[TANK_08].carNumber; 
	}
	else if(tid == TANK_08)
	{
		tid = TANK_07;
		carNumber += sys->tk[TANK_07].carNumber; 
	}
	
	changDosingByRun(tid,carNumber);

	
	if(sys->tk[tid].rcp.PdStart > 0  && sys->tk[tid].rcp.PdRun > 0 && (tid == TANK_04 || tid == TANK_07))
	{
		if(sys->tk[tid].PdRun == 0 || carNumber < sys->tk[tid].rcp.PdStart)
			sys->tk[tid].PdRun = sys->tk[tid].rcp.PdStart;

		if(carNumber >= sys->tk[tid].PdRun)
		{
			sys->tk[tid].PdRun == carNumber + sys->tk[tid].rcp.PdRun;
			setBit(sys->tk[tid].hsPDrain);
			PDrainLog(PDRAIN_PART,tid,carNumber);
		}
	
	}
	
	if(sys->tk[tid].rcp.DrainRun > 0)
	{
		if(tid == TANK_02)
		{
			sys->tk[TANK_02].lifeRun--;
			if(sys->tk[TANK_02].lifeRun <= 0)
				SendPcAlarm(PCA_SCRUN_BID,1);
		}
		else if(tid == TANK_04 || tid == TANK_05)
		{
			sys->tk[TANK_04].lifeRun--;
			sys->tk[TANK_05].lifeRun--;
			if(sys->tk[TANK_04].lifeRun <= 0)
				SendPcAlarm(PCA_TEXARUN_BID,1);
		}
		else if(tid == TANK_07||tid == TANK_08)
		{
			sys->tk[TANK_07].lifeRun--;
			sys->tk[TANK_08].lifeRun--;
			if(sys->tk[TANK_07].lifeRun <= 0)
				SendPcAlarm(PCA_TEXBRUN_BID,1);
		}
		else if(tid == TANK_11)
		{
			sys->tk[TANK_11].lifeRun--;
			if(sys->tk[TANK_11].lifeRun <= 0)
				SendPcAlarm(PCA_HFRUN_BID,1);
		}
	}
}

int CVICALLBACK robotThread (void *pData)
{
	ROBOT* rb = (ROBOT*)pData;

	while (rb->exitThread == 0)
	{
		Delay(DELAY_TIME);
		if(testBit(rb->hsBusyStatus,RB) > 0)
			continue;
		if(testBit(sys->hsEMGALL,RB) > 0)
			continue;
		if(testBit(sys->hsEMGROBOT,RB) > 0)
			continue;

		/*
		if(testBit(rb->hsHomeStatus,RB) == 0)
		{
			ROBOT_COMMAND cmd;
			cmd.tid = 0;
			cmd.type = HOME_COMMAND;
			ListInsertItem(rb->cmdList,&cmd, END_OF_LIST);
		}*/
		
		if(testBit(sys->hsAuto,RB)>0 && sys->rcp.isReady && testBit(rb->hsHomeStatus,RB) > 0)
		{
			serachGetTank(rb);
			searchMoveTank(rb);
		}
		
		///////////////////////////////////////////////////////////////////////////////////////////////////
		while(ListNumItems(rb->cmdList))
		{
			ROBOT_COMMAND cmd;
			ListGetItem (rb->cmdList, &cmd, FRONT_OF_LIST);
	
			if(safeCheck(rb,cmd) == 0){
				cancelRobotCommand(rb);
				continue;
			}
			
			if(GetTankLock(rb,cmd) == 0){
				Delay(DELAY_TIME);
				continue;
			}
			
			LogRoobotEvent(rb,START_ROBOT_EVENT,cmd);
			
			///write command data
			rb->write2Plc = 1;
			while(rb->write2Plc == 1 && isAbortCommand(rb) == 0) 
				Delay(DELAY_TIME);
			rb->write2Plc = 0;
			if(isAbortCommand(rb) == 1)
			{
				ReleaseTankLock(cmd);
				cancelRobotCommand(rb);  
				continue;
			}
	
			///notify plc
			do{
				setBit(rb->hsSetCommandData);
				Delay(DELAY_TIME); 
			}while((testBit(rb->hsSetCommandData,RB) == 0) && isAbortCommand(rb) == 0); 
				
			resetBit(rb->hsSetCommandData);
			if(isAbortCommand(rb) == 1){
				ReleaseTankLock(cmd);
				cancelRobotCommand(rb);  
				continue;
			}
		
			BIT bt;
			
			if(cmd.type == GET_COMMAND) 		
			{
				bt = rb->hsGet;
			}
			else if(cmd.type == PUT_COMMAND) 	
			{
				bt = rb->hsPut;
			}
			else if(cmd.type == MOVE_COMMAND)	
			{
				bt = rb->hsMove;
			}
			else if(cmd.type == BLOW_COMMAND)	bt = rb->hsBlow;
			else if(cmd.type == WASH_COMMAND)	bt = rb->hsWash;
			else if(cmd.type == HOME_COMMAND) 	bt = rb->hsHome;
			else{
				bt.bid = 0;
				bt.wid = 0;
				ReleaseTankLock(cmd);
				cancelRobotCommand(rb);  
				continue;
			}
		
			///send command
			do{
				setBit(bt);
				Delay(DELAY_TIME);
			}while((testBit(bt,RB) == 0) && isAbortCommand(rb) == 0); 
				
			resetBit(bt);
			if(isAbortCommand(rb) == 1){
				ReleaseTankLock(cmd);
				cancelRobotCommand(rb); 
				continue;
			}
		
			///wait plc complete
			while((testBit(bt,RB) > 0) && isAbortCommand(rb) == 0 )
			{
				Delay(DELAY_TIME);
				
				//////////////////////////////////////////////
				if(cmd.type == GET_COMMAND)
				{
					if(rb->curPosY == sys->rtk[cmd.rid].MvPosV)
					{
						setBit(rb->hsFill);
						resetBit(sys->rtk[cmd.rid].hsFill);
					}
				}
				else if(cmd.type == PUT_COMMAND)
				{
					if(rb->curPosY == sys->rtk[cmd.rid].MvPosV)
					{
						resetBit(rb->hsFill);
						setBit(sys->rtk[cmd.rid].hsFill);

						sys->rtk[cmd.rid].car.isTexured =  rb->car.isTexured ;

					}
				}
				////////////////////////////////////////////////
			}
			if(isAbortCommand(rb) == 1){
				ReleaseTankLock(cmd);
				cancelRobotCommand(rb); 
				continue;
			}
			
			while(isAbortCommand(rb) == 0 && rb->curPosY != rb->safeHight)
				Delay(DELAY_TIME);
			if(isAbortCommand(rb) == 1){
				ReleaseTankLock(cmd);
				cancelRobotCommand(rb); 
				continue;
			}
			
			
			double tm;
			GetCurrentDateTime(&tm);
			if(cmd.type == GET_COMMAND)
			{
				rb->car = sys->rtk[cmd.rid].car;
				//memcpy(&rb->car,&sys->rtk[cmd.rid].car,sizeof(CAR));
				rb->car.oPrcTM[sys->rtk[cmd.rid].tid]  = tm;
				rb->car.curTank = TANK_UNKNOW;
				rb->car.oPrcTemp[sys->rtk[cmd.rid].tid]  = sys->tk[sys->rtk[cmd.rid].tid].curTemp; 
				////////////////////////////////
				setBit(rb->hsFill);
				resetBit(sys->rtk[cmd.rid].hsFill);
				/////////////////////////////////
				
				memset(&sys->rtk[cmd.rid].car ,0, sizeof(CAR));
				
				if(sys->rtk[cmd.rid].getDirty)
					rb->isDirty = 1;
				
			}
			else if(cmd.type == PUT_COMMAND)
			{
				rb->car.iPrcTemp[sys->rtk[cmd.rid].tid]  = sys->tk[sys->rtk[cmd.rid].tid].curTemp; 
				rb->car.curTank = cmd.tid;
				rb->car.iPrcTM[sys->rtk[cmd.rid].tid] =sys->rtk[cmd.rid].car.iPrcTM[sys->rtk[cmd.rid].tid];
				if(rb->rid == RB01 && (cmd.rid == RTK_04_01 || cmd.rid == RTK_04_02 || cmd.rid == RTK_05_01 || cmd.rid == RTK_05_02))//for 25m
					rb->car.isTexured = 1;
				
				sys->rtk[cmd.rid].car = rb->car;
				//memcpy(&sys->rtk[cmd.rid].car,&rb->car,sizeof(CAR));
				memset(&rb->car ,0, sizeof(CAR));
				
				/////////////////////////////////////
				resetBit(rb->hsFill);
				setBit(sys->rtk[cmd.rid].hsFill);
				//////////////////////////////////////
				
				sys->tk[sys->rtk[cmd.rid].tid].carNumber++;
				WorkByRun(sys->rtk[cmd.rid].tid);
				
				if(sys->rtk[cmd.rid].putDirty)
					rb->isDirty = 1;
				if(sys->rtk[cmd.rid].putClean)
					rb->isDirty = 0;
				
				if(rb->rid == RB03 && cmd.rid == RTK_17)
				{
					LOG log;
					log.type = CAR_LOG;
					log.car = sys->rtk[cmd.rid].car;
					//memcpy(&log.car,&sys->rtk[cmd.rid].car,sizeof(CAR));

					GetCurrentDateTime(&log.tm);
					PutLogToQueue(&log, 1);
				}
			}
			else if(cmd.type == MOVE_COMMAND)	
			{
				
			}
			else if(cmd.type == BLOW_COMMAND)
			{
			   rb->isDirty = 0;
			}
			else if(cmd.type == WASH_COMMAND)
			{
				rb->isDirty = 0;
			}
			else if(cmd.type == HOME_COMMAND)
			{

			}
			
			ReleaseTankLock(cmd);
			ListRemoveItem(rb->cmdList, NULL, FRONT_OF_LIST); 
			LogRoobotEvent(rb,FINISH_ROBOT_EVENT,cmd);
		}
		
		
		//////////////////////////////////
		//end

	}
	

    return 0;
}


int LoadPositionData(void)
{
	IniText posHNDL={0};
	char path[300];
	char FileName[256];

	GetDir(path);
	Fmt(FileName,"%s<%s\\%s.txt", path, "RobotPosition"); 
	posHNDL = Ini_New(TRUE);
	if (Ini_ReadFromFile(posHNDL, FileName) < 0)
		return -1;

	for(int i = 0; i < ROBOT_NUM; i++)
	{
		for(int j = sys->rb[i].firstRid; j <= sys->rb[i].lastRid; j++)
		{
			char name[62];
			sprintf(name,"%s-%d",sys->rb[i].name,j);
			
			if(j == sys->rb[i].firstRid && i != 0)
			{
				Ini_GetDouble(posHNDL, name, "MvPosH2", &sys->rtk[j].MvPosH2);
				Ini_GetDouble(posHNDL, name, "MvLock2", &sys->rtk[j].MvLock2);
				Ini_GetDouble(posHNDL, name, "MvPosV2", &sys->rtk[j].MvPosV2);
			}
			else
			{
				Ini_GetDouble(posHNDL, name, "MvPosH", &sys->rtk[j].MvPosH);
				Ini_GetDouble(posHNDL, name, "MvLock", &sys->rtk[j].MvLock);
				Ini_GetDouble(posHNDL, name, "MvPosV", &sys->rtk[j].MvPosV);
			}
		}
	
		Ini_GetDouble(posHNDL, sys->rb[i].name, "cleanPosH", &sys->rb[i].cleanPosH);
		Ini_GetDouble(posHNDL, sys->rb[i].name, "cleanPosV", &sys->rb[i].cleanPosV);
		Ini_GetDouble(posHNDL, sys->rb[i].name, "cleanLock", &sys->rb[i].cleanLock);
		
		Ini_GetDouble(posHNDL, sys->rb[i].name, "safeHight", &sys->rb[i].safeHight);
	}
	
	Ini_Dispose(posHNDL);

	return 0;
}

int SavePositionData(ROBOT_ID rbid, RTANK_ID rtid, POS_TYPE type)
{
	g_updatePos = 1;
	g_updatePosRBid = rbid;
	g_updatePosRTid = rtid;
	g_updatePosType = type;
	
	IniText posHNDL={0};
	char path[300];
	char FileName[256];

	GetDir(path);
	Fmt(FileName,"%s<%s\\%s.txt", path, "RobotPosition"); 
	posHNDL = Ini_New(TRUE);
	
	if(g_updatePosType == SAFE_POS)
	{
		Ini_PutDouble(posHNDL, sys->rb[g_updatePosRBid].name, "safeHight", sys->rb[g_updatePosRBid].safeHight);
	}
	else if(g_updatePosType == TANK_POS)
	{
		char name[62];
		sprintf(name,"%s-%d",sys->rb[g_updatePosRBid].name,g_updatePosRTid);
		
		if(g_updatePosRTid == sys->rb[g_updatePosRBid].firstRid && g_updatePosRBid != RB01)
		{
			Ini_PutDouble(posHNDL, name, "MvPosH2", sys->rtk[g_updatePosRTid].MvPosH2);
			Ini_PutDouble(posHNDL, name, "MvLock2", sys->rtk[g_updatePosRTid].MvLock2);
			Ini_PutDouble(posHNDL, name, "MvPosV2", sys->rtk[g_updatePosRTid].MvPosV2);
		}
		else
		{
			Ini_PutDouble(posHNDL, name, "MvPosH", sys->rtk[g_updatePosRTid].MvPosH);
			Ini_PutDouble(posHNDL, name, "MvLock", sys->rtk[g_updatePosRTid].MvLock);
			Ini_PutDouble(posHNDL, name, "MvPosV", sys->rtk[g_updatePosRTid].MvPosV);
		}
	}
	else if(g_updatePosType == CLEAN_POS)
	{
		Ini_PutDouble(posHNDL, sys->rb[g_updatePosRBid].name, "cleanPosH", sys->rb[g_updatePosRBid].cleanPosH);
		Ini_PutDouble(posHNDL, sys->rb[g_updatePosRBid].name, "cleanPosV", sys->rb[g_updatePosRBid].cleanPosV);
		Ini_PutDouble(posHNDL, sys->rb[g_updatePosRBid].name, "cleanLock", sys->rb[g_updatePosRBid].cleanLock);
	}
	
	Ini_WriteToFile(posHNDL, FileName);
	Ini_Dispose(posHNDL);
	
	return 0;
}
