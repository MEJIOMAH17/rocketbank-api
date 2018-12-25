.class Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$1;
.super Ljava/lang/Object;
.source "FillFormRegistrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$1;->this$0:Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$1;->this$0:Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->onNextButtonClick()V

    return-void
.end method
