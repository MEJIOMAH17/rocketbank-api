.class final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$4;
.super Lkotlin/jvm/internal/Lambda;
.source "CardPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->onAccount(Lru/rocketbank/core/model/AccountModel;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$4;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$4;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$4;->INSTANCE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$4;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 0

    return-void
.end method
