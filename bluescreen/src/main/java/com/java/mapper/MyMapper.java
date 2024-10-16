package com.java.mapper;

import java.sql.Timestamp;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.Announce;
import com.java.dto.Drug;
import com.java.dto.Member;
import com.java.dto.Medicine;
import com.java.dto.Page;

@Mapper
public interface MyMapper {

	ArrayList<Medicine> selectPage(int startRow, int endRow);

	Member selectUser(String attribute);

	void deleteCk(int dno, int uno);

	void myMediUp(int uno, int dno, String ddate);

	String myMediAll(int uno, int dno);

	void alarmDate(int uno, String alDate);

	ArrayList<Medicine> selectMList(int uno);

	ArrayList<Drug> selectDList(Page page, int uno);

	int selectListCount(int uno);

	void alarm_date(int uno, String alDate);

	Timestamp selectDate();

	void updateDdate(Timestamp ddate, int uno);

	void insertAnnounce(Announce announce);

	int selectListCountAnnounce();

	ArrayList<Announce> selectAllAnnounce(Page page);

	Announce selectOneAnnounce(int ano);

	void adelete(int ano);

	

	Announce selectAnnouncePrev(int ano);

	Announce selectAnnounceNext(int ano);

	

	

	
	
}
