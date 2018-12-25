.class public Lru/rocketbank/core/model/discounts/DiscountsCollection;
.super Ljava/lang/Object;
.source "DiscountsCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public categories:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/discounts/Category;",
            ">;"
        }
    .end annotation
.end field

.field public chosenMonthCashBack:Lru/rocketbank/core/model/dto/operations/MonthCashBack;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chosen_month_cash_back"
    .end annotation
.end field

.field public gamer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/discounts/Gamer;",
            ">;"
        }
    .end annotation
.end field

.field public monthCashBack:Lru/rocketbank/core/model/dto/operations/MonthCashBack;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "month_cash_back"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
