.class final Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AccountWidget.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widget/AccountWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/core/model/UserModel;",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lru/rocketbank/core/model/facade/Account;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widget/AccountWidget;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widget/AccountWidget;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;->invoke(Lru/rocketbank/core/model/UserModel;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/core/model/UserModel;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/UserModel;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/facade/Account;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance p1, Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1$1;-><init>(Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1
.end method
