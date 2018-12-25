.class public final Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;
.super Ljava/lang/Object;
.source "FingerprintDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widgets/FingerprintDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkFingerprint(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;)Landroid/support/v7/app/AlertDialog;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "touch_state"

    const/4 v2, 0x0

    .line 191
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 192
    invoke-interface {p3, v2}, Lru/rocketbank/core/manager/TouchManager;->initialize(Z)Z

    move-result v1

    .line 193
    invoke-interface {p3}, Lru/rocketbank/core/manager/TouchManager;->close()V

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 196
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    const v1, 0x7f110479

    .line 199
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026ch_authorization_message)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p1, p2, p3, v1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->showConfirmFingerPrintDialog(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final showConfirmFingerPrintDialog(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    new-instance v1, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$1;

    invoke-direct {v1, p2}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$1;-><init>(Landroid/support/v4/app/FragmentManager;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const p2, 0x104000a

    invoke-virtual {v0, p2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    .line 220
    new-instance v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$2;

    invoke-direct {v0, p3, p1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$2;-><init>(Lru/rocketbank/core/manager/TouchManager;Landroid/content/Context;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const/high16 p3, 0x1040000

    invoke-virtual {p2, p3, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    .line 227
    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable$184cab27()Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f110477

    .line 228
    invoke-virtual {p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    .line 229
    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p2, p4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    .line 230
    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p2

    .line 231
    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog;->show()V

    const/4 p3, -0x1

    .line 232
    invoke-virtual {p2, p3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    const p4, 0x7f060208

    invoke-static {p1, p4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p3, -0x2

    .line 233
    invoke-virtual {p2, p3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    const p4, 0x7f060095

    invoke-static {p1, p4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setTextColor(I)V

    const-string p1, "dialog"

    .line 234
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final showFingerprintDialog(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fingerprint"

    .line 205
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    instance-of v1, v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    if-eqz v1, :cond_0

    check-cast v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fingerprint"

    .line 207
    invoke-virtual {v0, p1, v1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;-><init>()V

    const-string v1, "fingerprint"

    invoke-virtual {v0, p1, v1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final showSuggestDialogIfNeed(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "touch_was_suggested"

    const/4 v2, 0x0

    .line 240
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "touch_state"

    .line 241
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    .line 242
    invoke-interface {p3}, Lru/rocketbank/core/manager/TouchManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "touch_was_suggested"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 244
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    const v1, 0x7f110448

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.string.suggest_fingerprint)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->showConfirmFingerPrintDialog(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    return v2

    :cond_0
    return v2
.end method
