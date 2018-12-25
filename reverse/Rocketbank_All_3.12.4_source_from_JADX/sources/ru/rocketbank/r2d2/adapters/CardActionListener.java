package ru.rocketbank.r2d2.adapters;

import ru.rocketbank.core.model.CardModel;

/* compiled from: CardActionListener.kt */
public interface CardActionListener {
    void onCardChanged(String str, String str2, String str3);

    void onClick(CardModel cardModel);

    void onValidCard(boolean z);
}
