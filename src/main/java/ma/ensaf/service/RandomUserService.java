package ma.ensaf.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import org.springframework.stereotype.Service;

import ma.ensaf.model.Coordinates;
import ma.ensaf.model.Id;
import ma.ensaf.model.Location;
import ma.ensaf.model.Login;
import ma.ensaf.model.Name;
import ma.ensaf.model.Picture;
import ma.ensaf.model.Street;
import ma.ensaf.model.Timezone;
import ma.ensaf.model.User;

@Service
public class RandomUserService {
	private static final String[] GENDERS = {"male", "female"};
    private static final String[] FIRST_NAMES = {"John", "Jane", "Michael", "Sarah", "David", "Emma", "Jennie"};
    private static final String[] LAST_NAMES = {"Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Nichols"};
    private static final String[] CITIES = {"New York", "Los Angeles", "Chicago", "Houston", "Phoenix", "Billings"};
    private static final String[] STATES = {"New York", "California", "Illinois", "Texas", "Arizona", "Michigan"};
    private static final String[] COUNTRIES = {"United States"};
    private static final String[] TIMEZONE_DESCRIPTIONS = {"Adelaide, Darwin"};
    private static final String[] PICTURES = {
            "https://randomuser.me/api/portraits/men/75.jpg",
            "https://randomuser.me/api/portraits/women/75.jpg"
    };
    
    private Random random = new Random();
    
    public User generateRandomUser() {
    	User user = new User();
    	user.setGender(GENDERS[random.nextInt(GENDERS.length)]);
    	user.setName(new Name("Miss", "Jennie", "Nichols"));
    	user.setLocation(generateRandomLocation());
        user.setEmail(generateRandomEmail(user.getName()));
        user.setLogin(generateRandomLogin());
        user.setDob(LocalDate.of(1992, 3, 8));
        user.setRegistered(LocalDate.of(2007, 7, 9));
        user.setPhone("(272) 790-0888");
        user.setCell("(489) 330-2385");
        user.setId(new Id("SSN", "405-88-3636"));
        user.setPicture(new Picture(PICTURES[random.nextInt(PICTURES.length)], PICTURES[random.nextInt(PICTURES.length)], PICTURES[random.nextInt(PICTURES.length)]));
        user.setNat("US");
    	
    	
    	return user;
    }
    
    public List<User> generateRandomUsers(int count) {
        List<User> users = new ArrayList<>();
        for (int i = 0; i < count; i++) {
            users.add(generateRandomUser());
        }
        return users;
    }
    
    private Location generateRandomLocation() {
        Street street = new Street(8929, "Valwood Pkwy");
        Coordinates coordinates = new Coordinates("-69.8246", "134.8719");
        Timezone timezone = new Timezone("+9:30", TIMEZONE_DESCRIPTIONS[random.nextInt(TIMEZONE_DESCRIPTIONS.length)]);
        return new Location(street, "Billings", "Michigan", "United States", "63104", coordinates, timezone);
    }

    private String generateRandomEmail(Name name) {
        return name.getFirst().toLowerCase() + "." + name.getLast().toLowerCase() + "@example.com";
    }

    private Login generateRandomLogin() {
        return new Login(UUID.randomUUID().toString(), "yellowpeacock117", "addison", "sld1yGtd", "ab54ac4c0be9480ae8fa5e9e2a5196a3", "edcf2ce613cbdea349133c52dc2f3b83168dc51b", "48df5229235ada28389b91e60a935e4f9b73eb4bdb855ef9258a1751f10bdc5d");
    }
    
}
