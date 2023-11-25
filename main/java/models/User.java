package models;

import java.util.Date;

public record User(
		String userName,
		String email,
		String password,
		int roleId
		) {

}
