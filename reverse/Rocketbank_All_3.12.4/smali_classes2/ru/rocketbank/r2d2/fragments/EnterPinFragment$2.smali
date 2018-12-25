.class Lru/rocketbank/r2d2/fragments/EnterPinFragment$2;
.super Ljava/lang/Object;
.source "EnterPinFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/EnterPinFragment;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

.field final synthetic val$pinView:Lme/philio/pinentry/PinEntryView;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Lme/philio/pinentry/PinEntryView;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$2;->val$pinView:Lme/philio/pinentry/PinEntryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 184
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment$2;->val$pinView:Lme/philio/pinentry/PinEntryView;

    invoke-virtual {v0}, Lme/philio/pinentry/PinEntryView;->requestFocus()Z

    return-void
.end method
