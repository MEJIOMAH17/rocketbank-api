.class public final Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "SalaryTariffInstructionActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSalaryTariffInstructionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SalaryTariffInstructionActivity.kt\nru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity\n*L\n1#1,67:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion;

.field private static final KEY_INFO:Ljava/lang/String; = "KEY_INFO"

.field private static final KEY_PDF:Ljava/lang/String; = "KEY_PDF"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;

.field private infoUrl:Ljava/lang/String;

.field private pdfUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->Companion:Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKEY_INFO$cp()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->KEY_INFO:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_PDF$cp()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->KEY_PDF:Ljava/lang/String;

    return-object v0
.end method

.method public static final start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->Companion:Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 23
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 24
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c0058

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026alary_tariff_instruction)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;

    .line 26
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;

    if-nez p1, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->background:Landroid/widget/ImageView;

    const-string v0, "binding.background"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const v3, 0x7f08024b

    invoke-static {v3, p1, v0, v1, v2}, Lru/rocketbank/core/utils/ImageHelper;->loadFromRes$default(ILandroid/widget/ImageView;IILjava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 28
    sget-object v0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->KEY_INFO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringExtra(KEY_INFO)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->infoUrl:Ljava/lang/String;

    .line 29
    sget-object v0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->KEY_PDF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getStringExtra(KEY_PDF)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->pdfUrl:Ljava/lang/String;

    return-void
.end method

.method public final onDownloadButtonClicked()V
    .locals 4

    .line 44
    sget-object v0, Lru/rocketbank/r2d2/activities/DownloadActivity;->Companion:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->pdfUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v3, "pdfUrl"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;->startDownloadSecured(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onLinkClicked()V
    .locals 3

    .line 48
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->infoUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "infoUrl"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0, v1}, Lru/rocketbank/r2d2/Utils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected final onStart()V
    .locals 2

    .line 34
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStart()V

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->setListener(Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;)V

    return-void
.end method

.method protected final onStop()V
    .locals 2

    .line 39
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStop()V

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->setListener(Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;)V

    return-void
.end method
