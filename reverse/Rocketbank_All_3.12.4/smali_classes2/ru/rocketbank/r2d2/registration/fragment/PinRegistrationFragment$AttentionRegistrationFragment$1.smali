.class Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1;
.super Ljava/lang/Object;
.source "PinRegistrationFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;->onStartButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/PrivacyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1;->this$0:Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 179
    check-cast p1, Lru/rocketbank/core/model/PrivacyResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1;->call(Lru/rocketbank/core/model/PrivacyResponse;)V

    return-void
.end method

.method public call(Lru/rocketbank/core/model/PrivacyResponse;)V
    .locals 4

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1;->this$0:Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/AbstractActivity;

    .line 184
    invoke-virtual {p1}, Lru/rocketbank/core/model/PrivacyResponse;->getUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1$1;

    invoke-direct {v1, p0, v0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1$1;-><init>(Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1;Lru/rocketbank/r2d2/activities/AbstractActivity;)V

    new-instance v2, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1$2;-><init>(Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1;)V

    new-instance v3, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1$3;

    invoke-direct {v3, p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1$3;-><init>(Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1;)V

    .line 183
    invoke-static {v0, p1, v1, v2, v3}, Lru/rocketbank/r2d2/helpers/UIHelper;->showPrivacyDialog(Landroid/content/Context;Ljava/lang/String;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Landroid/support/v7/app/AlertDialog;

    return-void
.end method
