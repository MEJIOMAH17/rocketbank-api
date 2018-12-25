.class public final Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;
.super Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;
.source "DeliveryToolbarData.kt"


# instance fields
.field private final isUserLead:Landroid/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    .line 9
    invoke-direct/range {v0 .. v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/Ref;)V

    .line 10
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->isUserLead:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final isUserLead()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->isUserLead:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method
