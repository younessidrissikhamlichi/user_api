package ma.ensaf.model;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
	private String gender;
    private Name name;
    private Location location;
    private String email;
    private Login login;
    private LocalDate dob;
    private LocalDate registered;
    private String phone;
    private String cell;
    private Id id;
    private Picture picture;
    private String nat;

}
