.class final Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$onReadyClicked$1$2;
.super Ljava/lang/Object;
.source "NewPassportStepPresenter.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->onReadyClicked(Ljava/lang/Long;)V
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic receiver$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$onReadyClicked$1$2;->receiver$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$onReadyClicked$1$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$onReadyClicked$1$2;->receiver$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;

    invoke-interface {p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;->hideProgress()V

    .line 71
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$onReadyClicked$1$2;->receiver$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;

    const-string v0, "\u041f\u0440\u043e\u0438\u0437\u043e\u0448\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430"

    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;->showError(Ljava/lang/String;)V

    return-void
.end method
