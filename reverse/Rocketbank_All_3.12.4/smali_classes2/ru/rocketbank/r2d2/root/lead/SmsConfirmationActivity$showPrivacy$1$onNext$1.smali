.class final Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$1;
.super Ljava/lang/Object;
.source "SmsConfirmationActivity.kt"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->onNext(Lru/rocketbank/core/model/PrivacyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 1

    .line 262
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->hideProgressDialog()V

    return-void
.end method
