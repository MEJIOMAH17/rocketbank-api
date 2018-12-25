.class Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment$2;
.super Ljava/lang/Object;
.source "GenericRegistrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment$2;->this$0:Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment$2;->this$0:Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->onBottomButtonClicked()V

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
