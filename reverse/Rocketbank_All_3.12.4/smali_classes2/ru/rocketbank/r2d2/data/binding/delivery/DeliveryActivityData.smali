.class public final Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;
.super Ljava/lang/Object;
.source "DeliveryActivityData.kt"


# instance fields
.field private final repeatButtonVisible:Landroid/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;->repeatButtonVisible:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getRepeatButtonVisible()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;->repeatButtonVisible:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method
