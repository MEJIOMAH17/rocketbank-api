package ru.rocketbank.r2d2.adapters.card;

import ru.rocketbank.core.model.CardData;
import ru.rocketbank.core.model.CardModel;

/* compiled from: CardChangeListener.kt */
public interface CardChangeListener {
    void cardChanged(CardData cardData);

    void cardInvalid();

    void cardValid();

    void smallCardPressed(CardModel cardModel);
}
