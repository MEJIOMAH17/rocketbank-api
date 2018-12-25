.class public final Lru/rocketbank/r2d2/data/binding/discount/DiscountData;
.super Ljava/lang/Object;
.source "DiscountData.kt"


# instance fields
.field public final promoCode:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final promoCodeVisibility:Landroid/databinding/ObservableBoolean;

.field public final promoDescription:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final promoLink:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final promoTextCopy:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final promoTitle:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textCopy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0, p4}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;->promoLink:Landroid/databinding/ObservableField;

    .line 23
    new-instance p4, Landroid/databinding/ObservableField;

    invoke-direct {p4, p1}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;->promoTitle:Landroid/databinding/ObservableField;

    .line 26
    new-instance p1, Landroid/databinding/ObservableField;

    invoke-direct {p1, p3}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;->promoTextCopy:Landroid/databinding/ObservableField;

    .line 29
    new-instance p1, Landroid/databinding/ObservableField;

    invoke-direct {p1, p5}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;->promoCode:Landroid/databinding/ObservableField;

    .line 32
    new-instance p1, Landroid/databinding/ObservableField;

    invoke-direct {p1, p2}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;->promoDescription:Landroid/databinding/ObservableField;

    .line 35
    new-instance p1, Landroid/databinding/ObservableBoolean;

    invoke-direct {p1, p6}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;->promoCodeVisibility:Landroid/databinding/ObservableBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/Ref;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x0

    :cond_1
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 16
    invoke-direct/range {v0 .. v6}, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
