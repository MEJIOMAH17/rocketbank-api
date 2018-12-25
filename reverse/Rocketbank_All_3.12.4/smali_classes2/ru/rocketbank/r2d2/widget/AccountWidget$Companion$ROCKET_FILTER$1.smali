.class final Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AccountWidget.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widget/AccountWidget;
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


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1;->INSTANCE:Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1;->invoke(Lru/rocketbank/core/model/UserModel;)Lkotlin/jvm/functions/Function1;

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

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1$1;

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget$Companion$ROCKET_FILTER$1$1;-><init>(Lru/rocketbank/core/model/UserModel;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
