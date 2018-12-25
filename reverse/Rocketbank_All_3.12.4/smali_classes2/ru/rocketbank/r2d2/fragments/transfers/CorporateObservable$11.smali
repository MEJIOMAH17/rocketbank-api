.class final Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$11;
.super Lkotlin/jvm/internal/Lambda;
.source "TransferBankFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$11;->this$0:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1170
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$11;->invoke(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$11;->this$0:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getGkhVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$11;->this$0:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    const-string v1, "gkh_els"

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->access$checkGkhField(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
