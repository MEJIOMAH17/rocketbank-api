.class public final Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$init$1;
.super Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;
.source "BaseAmountActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->init(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $editAmount:Lru/rocketbank/core/widgets/RocketEditText;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketEditText;Landroid/widget/EditText;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$init$1;->$editAmount:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-direct {p0, p2}, Lru/rocketbank/core/widgets/listener/AddCurrencyMainListener;-><init>(Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method protected final getCurrency()Ljava/lang/String;
    .locals 1

    .line 97
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbolRub()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
