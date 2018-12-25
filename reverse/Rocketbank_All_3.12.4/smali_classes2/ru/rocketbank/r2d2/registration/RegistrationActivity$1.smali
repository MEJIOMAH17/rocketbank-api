.class Lru/rocketbank/r2d2/registration/RegistrationActivity$1;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/RegistrationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/RegistrationActivity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$1;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$1;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->access$000(Lru/rocketbank/r2d2/registration/RegistrationActivity;)V

    const/4 v0, 0x1

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
