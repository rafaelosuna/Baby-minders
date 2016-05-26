/**
 * 
 */
package com.osg.babyminders.hibernate.model;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.ZoneId;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * This class is used to represent a User
 * 
 * @author Rafael Osuna
 *
 */

@Entity
@Table(name="USER")
public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@NotNull
	@Size(min=5,max=1000)
	@Column(name="email",nullable=false,unique=true)
	private String email;
	
	@NotNull
	@Size(min=6)
	@Column(name="password")
	private String password;
	
	@Column(name="date_of_birth",nullable=true)
	private LocalDate dateOfBirth;
	
	@Column(name="sex",nullable=true)
	private char sex;
	
	@NotNull
	@Column(name="first_name",nullable=false)
	private String firstName;
	
	@NotNull
	@Column(name="last_name",nullable=false)
	private String lastName;
	
	@Column(name="zip_code")
	@Size(max=10)
	private int zipCode;
	
	@NotNull
	@Column(name="type",nullable=false)
	private int type;
	
	@NotNull
	@Column(name="subscription",nullable=false)
	private int subscription;
	
	@NotNull
	@Column(name="timezone")
	private ZoneId timezone;
	
	@NotNull
	@Column(name="email_notification")
	private int emailNotification;
	
	@NotNull
	@Column(name="phone_notification")
	private int phoneNotification;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the dateOfBirth
	 */
	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	/**
	 * @param dateOfBirth the dateOfBirth to set
	 */
	public void setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	/**
	 * @return the sex
	 */
	public char getSex() {
		return sex;
	}

	/**
	 * @param sex the sex to set
	 */
	public void setSex(char sex) {
		this.sex = sex;
	}

	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return the zipCode
	 */
	public int getZipCode() {
		return zipCode;
	}

	/**
	 * @param zipCode the zipCode to set
	 */
	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}

	/**
	 * @return the type
	 */
	public int getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(int type) {
		this.type = type;
	}

	/**
	 * @return the subscription
	 */
	public int getSubscription() {
		return subscription;
	}

	/**
	 * @param subscription the subscription to set
	 */
	public void setSubscription(int subscription) {
		this.subscription = subscription;
	}

	/**
	 * @return the timezone
	 */
	public ZoneId getTimezone() {
		return timezone;
	}

	/**
	 * @param timezone the timezone to set
	 */
	public void setTimezone(ZoneId timezone) {
		this.timezone = timezone;
	}

	/**
	 * @return the emailNotification
	 */
	public int getEmailNotification() {
		return emailNotification;
	}

	/**
	 * @param emailNotification the emailNotification to set
	 */
	public void setEmailNotification(int emailNotification) {
		this.emailNotification = emailNotification;
	}

	/**
	 * @return the phoneNotification
	 */
	public int getPhoneNotification() {
		return phoneNotification;
	}

	/**
	 * @param phoneNotification the phoneNotification to set
	 */
	public void setPhoneNotification(int phoneNotification) {
		this.phoneNotification = phoneNotification;
	}
	
	
	
}
