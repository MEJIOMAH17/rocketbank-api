.class public final Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;
.super Ljava/lang/Object;
.source "GridDiscountData.kt"


# instance fields
.field private final isWhiteBackground:Landroid/databinding/ObservableBoolean;

.field private final title:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0, p1}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;->title:Landroid/databinding/ObservableField;

    .line 12
    new-instance p1, Landroid/databinding/ObservableBoolean;

    invoke-direct {p1, p2}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;->isWhiteBackground:Landroid/databinding/ObservableBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getTitle()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;->title:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final isWhiteBackground()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/discount/GridDiscountData;->isWhiteBackground:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method
