package util;

import java.security.SecureRandom;

public class Random {

    static final String AB = "0123456789abcdefghijklmnopqrstuvwxyz";
    static SecureRandom rnd = new SecureRandom();

    public String randomKey() {
        StringBuilder sb = new StringBuilder(6);
        for (int i = 0; i < 6; i++) {
            sb.append(AB.charAt(rnd.nextInt(AB.length())));
        }
        return sb.toString();
    }
}
