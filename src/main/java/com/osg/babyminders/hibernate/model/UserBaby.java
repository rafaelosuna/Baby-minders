package com.osg.babyminders.hibernate.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * This class is used to represent a relationship between a <code>User</code> and a <code>Baby</code>
 * @author Rafael Osuna
 *
 */

@Entity
@Table(name="USER_BABY")
public class UserBaby {

	@NotNull
	@Column(name="user_id",nullable=false)
	private int userId;
	
	@NotNull
	@Column(name="baby_id",nullable=false)
	private int babyId;
	
	@NotNull
	@Column(name="relationship",nullable=false)
	private int relationship;

	/**
	 * @return the userId
	 */
	public int getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}

	/**
	 * @return the babyId
	 */
	public int getBabyId() {
		return babyId;
	}

	/**
	 * @param babyId the babyId to set
	 */
	public void setBabyId(int babyId) {
		this.babyId = babyId;
	}

	/**
	 * @return the relationship
	 */
	public int getRelationship() {
		return relationship;
	}

	/**
	 * @param relationship the relationship to set
	 */
	public void setRelationship(int relationship) {
		this.relationship = relationship;
	}
}
