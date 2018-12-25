.class final Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter$deleteTur$1;
.super Ljava/lang/Object;
.source "APManageCardPresenter.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->deleteTur()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAPManageCardPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APManageCardPresenter.kt\nru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter$deleteTur$1\n*L\n1#1,46:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter$deleteTur$1;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter$deleteTur$1;->call(Lkotlin/Unit;)V

    return-void
.end method

.method public final call(Lkotlin/Unit;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter$deleteTur$1;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->access$getView$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;)Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;->hideProgress()V

    .line 36
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;->onTurDeleted()V

    return-void

    :cond_0
    return-void
.end method
