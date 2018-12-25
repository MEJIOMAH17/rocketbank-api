package ru.rocketbank.core.model;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.TransfersModelUrFiz;

/* compiled from: TransferTemplates.kt */
public final class TransferTemplates {
    private ArrayList<TransfersModelUrFiz> budget;
    private ArrayList<TransfersModelUrFiz> card2card;
    private ArrayList<TransfersModelUrFiz> individuals;
    private ArrayList<TransfersModelUrFiz> legalEntities;

    public static /* bridge */ /* synthetic */ TransferTemplates copy$default(TransferTemplates transferTemplates, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = transferTemplates.card2card;
        }
        if ((i & 2) != 0) {
            arrayList2 = transferTemplates.individuals;
        }
        if ((i & 4) != 0) {
            arrayList3 = transferTemplates.legalEntities;
        }
        if ((i & 8) != 0) {
            arrayList4 = transferTemplates.budget;
        }
        return transferTemplates.copy(arrayList, arrayList2, arrayList3, arrayList4);
    }

    public final ArrayList<TransfersModelUrFiz> component1() {
        return this.card2card;
    }

    public final ArrayList<TransfersModelUrFiz> component2() {
        return this.individuals;
    }

    public final ArrayList<TransfersModelUrFiz> component3() {
        return this.legalEntities;
    }

    public final ArrayList<TransfersModelUrFiz> component4() {
        return this.budget;
    }

    public final TransferTemplates copy(ArrayList<TransfersModelUrFiz> arrayList, ArrayList<TransfersModelUrFiz> arrayList2, ArrayList<TransfersModelUrFiz> arrayList3, ArrayList<TransfersModelUrFiz> arrayList4) {
        return new TransferTemplates(arrayList, arrayList2, arrayList3, arrayList4);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof TransferTemplates) {
                TransferTemplates transferTemplates = (TransferTemplates) obj;
                if (Intrinsics.areEqual(this.card2card, transferTemplates.card2card) && Intrinsics.areEqual(this.individuals, transferTemplates.individuals) && Intrinsics.areEqual(this.legalEntities, transferTemplates.legalEntities) && Intrinsics.areEqual(this.budget, transferTemplates.budget)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        ArrayList arrayList = this.card2card;
        int i = 0;
        int hashCode = (arrayList != null ? arrayList.hashCode() : 0) * 31;
        ArrayList arrayList2 = this.individuals;
        hashCode = (hashCode + (arrayList2 != null ? arrayList2.hashCode() : 0)) * 31;
        arrayList2 = this.legalEntities;
        hashCode = (hashCode + (arrayList2 != null ? arrayList2.hashCode() : 0)) * 31;
        arrayList2 = this.budget;
        if (arrayList2 != null) {
            i = arrayList2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("TransferTemplates(card2card=");
        stringBuilder.append(this.card2card);
        stringBuilder.append(", individuals=");
        stringBuilder.append(this.individuals);
        stringBuilder.append(", legalEntities=");
        stringBuilder.append(this.legalEntities);
        stringBuilder.append(", budget=");
        stringBuilder.append(this.budget);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public TransferTemplates(ArrayList<TransfersModelUrFiz> arrayList, ArrayList<TransfersModelUrFiz> arrayList2, ArrayList<TransfersModelUrFiz> arrayList3, ArrayList<TransfersModelUrFiz> arrayList4) {
        this.card2card = arrayList;
        this.individuals = arrayList2;
        this.legalEntities = arrayList3;
        this.budget = arrayList4;
    }

    public final ArrayList<TransfersModelUrFiz> getCard2card() {
        return this.card2card;
    }

    public final void setCard2card(ArrayList<TransfersModelUrFiz> arrayList) {
        this.card2card = arrayList;
    }

    public final ArrayList<TransfersModelUrFiz> getIndividuals() {
        return this.individuals;
    }

    public final void setIndividuals(ArrayList<TransfersModelUrFiz> arrayList) {
        this.individuals = arrayList;
    }

    public final ArrayList<TransfersModelUrFiz> getLegalEntities() {
        return this.legalEntities;
    }

    public final void setLegalEntities(ArrayList<TransfersModelUrFiz> arrayList) {
        this.legalEntities = arrayList;
    }

    public final ArrayList<TransfersModelUrFiz> getBudget() {
        return this.budget;
    }

    public final void setBudget(ArrayList<TransfersModelUrFiz> arrayList) {
        this.budget = arrayList;
    }
}
