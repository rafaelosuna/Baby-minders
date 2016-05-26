package com.osg.babyminders.service;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.osg.babyminders.dao.BabyDao;
import com.osg.babyminders.hibernate.model.Baby;

/**
 * Root resource (exposed at "myresource" path)
 */
@RestController
public class BabyRestController {

    BabyDao babyDao;
	
	@RequestMapping(value = "/baby/{id}", method = RequestMethod.GET)
	public ResponseEntity<Baby> getBaby(int id) {
		Baby baby = babyDao.getBaby(id);
		if(baby == null) {
			return new ResponseEntity<Baby>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<Baby>(baby, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/baby/{id}/user{id}/", method = RequestMethod.GET)
	public ResponseEntity<Baby> getBabyForUSer(int babyId, int userId) {
		Baby baby = babyDao.getBabyForUser(babyId, userId);
		if(baby == null) {
			return new ResponseEntity<Baby>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<Baby>(baby, HttpStatus.OK);
	}
}
