package services;

import java.util.List;

import database.DonationConnector;
import models.Donation;

public class DonationService {
	private DonationConnector donationConnector ;
	
	public DonationService() {
		this.donationConnector = new DonationConnector();
	}
	
	public boolean createDonation(Donation _donation) {
		return donationConnector.createDonation(_donation);
	}
	
	public List<Donation> readAllDonations() {
		return donationConnector.getAllDonations();
	}
	
	public Donation readDonation(int id) {
		return donationConnector.getDonation(id);
	}
	
	public boolean updateDonation(Donation _donation) {
		return donationConnector.updateDonation(_donation);
	}

}