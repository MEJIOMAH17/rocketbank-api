package io.card.payment;

final class MaxLengthValidator extends NonEmptyValidator implements Validator {
    private int maxLength;

    MaxLengthValidator(int i) {
        this.maxLength = i;
    }

    public final boolean isValid() {
        return super.isValid() && getValue().length() <= this.maxLength;
    }
}
