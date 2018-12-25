.class public final Lru/rocketbank/r2d2/data/binding/ProcessActivityData;
.super Ljava/lang/Object;
.source "ProcessActivityData.kt"


# instance fields
.field private buttonsVisible:Landroid/databinding/ObservableInt;

.field private messageText:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private retryVisible:Landroid/databinding/ObservableInt;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/databinding/ObservableInt;

    invoke-direct {v0, p1}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->buttonsVisible:Landroid/databinding/ObservableInt;

    .line 8
    new-instance p1, Landroid/databinding/ObservableInt;

    invoke-direct {p1, p2}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->retryVisible:Landroid/databinding/ObservableInt;

    .line 9
    new-instance p1, Landroid/databinding/ObservableField;

    const-string p2, ""

    invoke-direct {p1, p2}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->messageText:Landroid/databinding/ObservableField;

    return-void
.end method


# virtual methods
.method public final getButtonsVisible()Landroid/databinding/ObservableInt;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->buttonsVisible:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final getMessageText()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->messageText:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getRetryVisible()Landroid/databinding/ObservableInt;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->retryVisible:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final setButtonsVisible(Landroid/databinding/ObservableInt;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->buttonsVisible:Landroid/databinding/ObservableInt;

    return-void
.end method

.method public final setMessageText(Landroid/databinding/ObservableField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->messageText:Landroid/databinding/ObservableField;

    return-void
.end method

.method public final setRetryVisible(Landroid/databinding/ObservableInt;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/ProcessActivityData;->retryVisible:Landroid/databinding/ObservableInt;

    return-void
.end method
