package models;

import java.util.Date;

public record UserDetail(String userEmail, String firstName, String lastName, Date dob, boolean gender) {

}
