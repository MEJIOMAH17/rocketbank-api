.class final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1$dialog$1;
.super Ljava/lang/Object;
.source "ProfileFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1$dialog$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 559
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SECURITY_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1$dialog$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;

    iget-object p2, p2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    const/16 v0, 0x22c

    invoke-virtual {p2, p1, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
