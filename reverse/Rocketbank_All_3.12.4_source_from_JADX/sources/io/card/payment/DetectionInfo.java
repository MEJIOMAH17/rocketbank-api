package io.card.payment;

class DetectionInfo {
    public boolean bottomEdge;
    public boolean complete = false;
    public CreditCard detectedCard;
    public int expiry_month;
    public int expiry_year;
    public float focusScore;
    public boolean leftEdge;
    public int[] prediction = new int[16];
    public boolean rightEdge;
    public boolean topEdge;

    public DetectionInfo() {
        this.prediction[0] = -1;
        this.prediction[15] = -1;
        this.detectedCard = new CreditCard();
    }

    final int numVisibleEdges() {
        return ((this.topEdge + this.bottomEdge) + this.leftEdge) + this.rightEdge;
    }
}
