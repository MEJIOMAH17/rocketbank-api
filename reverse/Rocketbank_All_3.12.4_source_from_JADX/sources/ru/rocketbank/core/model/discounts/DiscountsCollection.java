package ru.rocketbank.core.model.discounts;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;
import ru.rocketbank.core.model.dto.operations.MonthCashBack;

public class DiscountsCollection implements Serializable {
    @SerializedName("categories")
    public List<Category> categories;
    @SerializedName("chosen_month_cash_back")
    public MonthCashBack chosenMonthCashBack;
    public List<Gamer> gamer;
    @SerializedName("month_cash_back")
    public MonthCashBack monthCashBack;
}
