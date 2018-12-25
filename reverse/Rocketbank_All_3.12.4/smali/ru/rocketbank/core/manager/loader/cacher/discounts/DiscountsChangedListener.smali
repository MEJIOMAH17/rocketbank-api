.class public interface abstract Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountsChangedListener;
.super Ljava/lang/Object;
.source "DiscountsChangedListener.kt"


# virtual methods
.method public abstract onCategoryAdded(Lru/rocketbank/core/model/discounts/Category;I)V
.end method

.method public abstract onCategoryRemoved(Lru/rocketbank/core/model/discounts/Category;I)V
.end method

.method public abstract onDiscountAdded(Lru/rocketbank/core/model/discounts/Category;I)V
.end method

.method public abstract onDiscountRemoved(Lru/rocketbank/core/model/discounts/Category;I)V
.end method

.method public abstract onDiscountsSelected(Lru/rocketbank/core/model/dto/operations/MonthCashBack;)V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method
