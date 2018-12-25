package ru.rocketbank.r2d2.utils;

public class CardNumberValidator {
    private static int[] allowedLengths = new int[]{16, 18, 19};

    public static boolean validate(String str) {
        str = str.replaceAll(" ", "");
        for (int i : allowedLengths) {
            if (str.length() == i) {
                return true;
            }
        }
        return false;
    }
}
