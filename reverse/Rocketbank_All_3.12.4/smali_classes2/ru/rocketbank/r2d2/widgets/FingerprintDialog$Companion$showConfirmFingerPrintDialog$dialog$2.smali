.class final Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$2;
.super Ljava/lang/Object;
.source "FingerprintDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->showConfirmFingerPrintDialog(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $touchManager:Lru/rocketbank/core/manager/TouchManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/TouchManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$2;->$touchManager:Lru/rocketbank/core/manager/TouchManager;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$2;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 221
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$2;->$touchManager:Lru/rocketbank/core/manager/TouchManager;

    invoke-interface {p1}, Lru/rocketbank/core/manager/TouchManager;->invalidateToken()V

    .line 222
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$2;->$context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 223
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "touch_state"

    const/4 v0, 0x0

    .line 224
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 225
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
