package ru.rocketbank.core.network.model;

import java.util.ArrayList;

/* compiled from: TransfersModelJsonObject.kt */
public class TransfersModelJsonObject {
    private ArrayList<TransfersModelUrFiz> transfers;

    public TransfersModelJsonObject(ArrayList<TransfersModelUrFiz> arrayList) {
        this.transfers = arrayList;
    }

    public final ArrayList<TransfersModelUrFiz> getTransfers() {
        return this.transfers;
    }

    public final void setTransfers(ArrayList<TransfersModelUrFiz> arrayList) {
        this.transfers = arrayList;
    }
}
