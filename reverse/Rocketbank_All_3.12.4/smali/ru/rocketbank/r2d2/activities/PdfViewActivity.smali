.class public final Lru/rocketbank/r2d2/activities/PdfViewActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "PdfViewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/PdfViewActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfViewActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfViewActivity.kt\nru/rocketbank/r2d2/activities/PdfViewActivity\n*L\n1#1,186:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/PdfViewActivity$Companion;

.field private static final KEY_CX:Ljava/lang/String; = "KEY_CX"

.field private static final KEY_CY:Ljava/lang/String; = "KEY_CY"

.field private static final KEY_FILE:Ljava/lang/String; = "KEY_FILE"

.field private static final KEY_REVEAL:Ljava/lang/String; = "KEY_REVEAL"

.field private static final KEY_SHOW_SEND:Ljava/lang/String; = "KEY_SHOW_SEND"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private animator:Lio/codetail/animation/SupportAnimator;

.field private binding:Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;

.field private cx:I

.field private cy:I

.field private filePath:Ljava/lang/String;

.field private isReveal:Z

.field private showSend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/PdfViewActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/PdfViewActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->Companion:Lru/rocketbank/r2d2/activities/PdfViewActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lru/rocketbank/r2d2/activities/PdfViewActivity;)Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;
    .locals 1

    .line 24
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCx$p(Lru/rocketbank/r2d2/activities/PdfViewActivity;)I
    .locals 0

    .line 24
    iget p0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->cx:I

    return p0
.end method

.method public static final synthetic access$getCy$p(Lru/rocketbank/r2d2/activities/PdfViewActivity;)I
    .locals 0

    .line 24
    iget p0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->cy:I

    return p0
.end method

.method public static final synthetic access$getKEY_CX$cp()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->KEY_CX:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_CY$cp()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->KEY_CY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_FILE$cp()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->KEY_FILE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_REVEAL$cp()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->KEY_REVEAL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_SHOW_SEND$cp()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->KEY_SHOW_SEND:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isReveal$p(Lru/rocketbank/r2d2/activities/PdfViewActivity;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->isReveal:Z

    return p0
.end method

.method public static final synthetic access$revealOpen(Lru/rocketbank/r2d2/activities/PdfViewActivity;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->revealOpen(II)V

    return-void
.end method

.method public static final synthetic access$setBinding$p(Lru/rocketbank/r2d2/activities/PdfViewActivity;Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;

    return-void
.end method

.method public static final synthetic access$setCx$p(Lru/rocketbank/r2d2/activities/PdfViewActivity;I)V
    .locals 0

    .line 24
    iput p1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->cx:I

    return-void
.end method

.method public static final synthetic access$setCy$p(Lru/rocketbank/r2d2/activities/PdfViewActivity;I)V
    .locals 0

    .line 24
    iput p1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->cy:I

    return-void
.end method

.method public static final synthetic access$setReveal$p(Lru/rocketbank/r2d2/activities/PdfViewActivity;Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->isReveal:Z

    return-void
.end method

.method private final createAnimator(Landroid/view/View;II)Lio/codetail/animation/SupportAnimator;
    .locals 4

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v2, v0

    int-to-double v0, v1

    .line 120
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    .line 122
    invoke-static {p1, p2, p3, v1, v0}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object p1

    const-string p2, "animator"

    .line 123
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast p2, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Lio/codetail/animation/SupportAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x1f4

    .line 124
    invoke-virtual {p1, p2, p3}, Lio/codetail/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    return-object p1
.end method

.method private final revealOpen(II)V
    .locals 2

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;->container:Landroid/widget/FrameLayout;

    const-string v1, "binding.container"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->createAnimator(Landroid/view/View;II)Lio/codetail/animation/SupportAnimator;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->animator:Lio/codetail/animation/SupportAnimator;

    .line 77
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->animator:Lio/codetail/animation/SupportAnimator;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method

.method private final sharePdf()V
    .locals 3

    .line 149
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.STREAM"

    .line 153
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "application/pdf"

    .line 154
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    .line 156
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v0, 0x7f110400

    .line 158
    :try_start_0
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 160
    :catch_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f11002f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static final start(Landroid/content/Context;ZLjava/lang/String;IIZ)V
    .locals 7

    sget-object v0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->Companion:Lru/rocketbank/r2d2/activities/PdfViewActivity$Companion;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lru/rocketbank/r2d2/activities/PdfViewActivity$Companion;->start(Landroid/content/Context;ZLjava/lang/String;IIZ)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final onBackPressed()V
    .locals 2

    .line 81
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->isReveal:Z

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->animator:Lio/codetail/animation/SupportAnimator;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->reverse()Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    const-string v1, "animator.reverse()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v1, Lru/rocketbank/r2d2/activities/PdfViewActivity$onBackPressed$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/PdfViewActivity$onBackPressed$1;-><init>(Lru/rocketbank/r2d2/activities/PdfViewActivity;)V

    check-cast v1, Lio/codetail/animation/SupportAnimator$AnimatorListener;

    invoke-virtual {v0, v1}, Lio/codetail/animation/SupportAnimator;->addListener(Lio/codetail/animation/SupportAnimator$AnimatorListener;)V

    .line 110
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void

    .line 106
    :cond_1
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->cancel()V

    .line 107
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->finish()V

    return-void

    .line 113
    :cond_2
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onBackPressed()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0c004b

    invoke-static {v0, v1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "DataBindingUtil.setConte\u2026layout.activity_pdf_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    sget-object v1, Lru/rocketbank/r2d2/activities/PdfViewActivity;->KEY_SHOW_SEND:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->showSend:Z

    .line 41
    sget-object v1, Lru/rocketbank/r2d2/activities/PdfViewActivity;->KEY_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->filePath:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->filePath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 43
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " file path can not be null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 44
    :cond_1
    sget-object v1, Lru/rocketbank/r2d2/activities/PdfViewActivity;->KEY_REVEAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->isReveal:Z

    .line 45
    iget-boolean v1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->isReveal:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 47
    sget-object p1, Lru/rocketbank/r2d2/activities/PdfViewActivity;->KEY_CX:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->cx:I

    .line 48
    sget-object p1, Lru/rocketbank/r2d2/activities/PdfViewActivity;->KEY_CY:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->cy:I

    :cond_2
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->showSend:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 131
    :cond_0
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f09031e

    if-eq v0, v1, :cond_0

    .line 145
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 137
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->sharePdf()V

    return v2

    .line 141
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->onBackPressed()V

    return v2
.end method

.method protected final onStart()V
    .locals 1

    .line 55
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStart()V

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->filePath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->showPdf(Ljava/lang/String;)V

    return-void
.end method

.method public final showPdf(Ljava/lang/String;)V
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;

    if-nez p1, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->fromFile(Ljava/io/File;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe$5da59061()Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap$5da59061()Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage$1978f8f0()Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal$5da59061()Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 67
    new-instance v0, Lru/rocketbank/r2d2/activities/PdfViewActivity$showPdf$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/PdfViewActivity$showPdf$1;-><init>(Lru/rocketbank/r2d2/activities/PdfViewActivity;)V

    check-cast v0, Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    invoke-virtual {p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoad(Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V

    return-void

    .line 72
    :cond_1
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f11019a

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
