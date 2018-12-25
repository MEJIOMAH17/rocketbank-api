.class public final Landroid/support/v4/text/BidiFormatter;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;,
        Landroid/support/v4/text/BidiFormatter$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

.field private static final DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

.field private static DEFAULT_TEXT_DIRECTION_HEURISTIC$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

.field private static final LRM_STRING:Ljava/lang/String;

.field private static final RLM_STRING:Ljava/lang/String;


# instance fields
.field private final mDefaultTextDirectionHeuristicCompat$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

.field private final mFlags:I

.field private final mIsRtlContext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 84
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    const/16 v0, 0x200e

    .line 114
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    const/16 v0, 0x200f

    .line 119
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 216
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    sget-object v1, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    .line 221
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    sget-object v1, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-void
.end method

.method private constructor <init>(ZILcom/getkeepsafe/relinker/ReLinker$LoadListener;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-boolean p1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    .line 263
    iput p2, p0, Landroid/support/v4/text/BidiFormatter;->mFlags:I

    .line 264
    iput-object p3, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    return-void
.end method

.method synthetic constructor <init>(ZILcom/getkeepsafe/relinker/ReLinker$LoadListener;B)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Locale;)Z
    .locals 1

    .line 6515
    invoke-static {p0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$100$e10cd3b()Lcom/getkeepsafe/relinker/ReLinker$LoadListener;
    .locals 1

    .line 79
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    return-object v0
.end method

.method static synthetic access$200()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .line 79
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-object v0
.end method

.method static synthetic access$300()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .line 79
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-object v0
.end method

.method public static getInstance()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .line 235
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .line 505
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1411
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/getkeepsafe/relinker/ReLinker$LoadListener;->isRtl$4d1ed0c3(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 1412
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2279
    iget v2, p0, Landroid/support/v4/text/BidiFormatter;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v4, -0x1

    if-eqz v2, :cond_7

    if-eqz v0, :cond_2

    .line 1414
    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .line 2327
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v2, p1, v5}, Lcom/getkeepsafe/relinker/ReLinker$LoadListener;->isRtl$4d1ed0c3(Ljava/lang/CharSequence;I)Z

    move-result v2

    .line 2329
    iget-boolean v5, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v5, :cond_4

    if-nez v2, :cond_3

    .line 2557
    new-instance v5, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    invoke-direct {v5, p1}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 2330
    :cond_3
    sget-object v2, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    goto :goto_2

    .line 2332
    :cond_4
    iget-boolean v5, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v5, :cond_6

    if-eqz v2, :cond_5

    .line 3557
    new-instance v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    invoke-direct {v2, p1}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 2333
    :cond_5
    sget-object v2, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v2, ""

    .line 1414
    :goto_2
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1417
    :cond_7
    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eq v0, v2, :cond_9

    if-eqz v0, :cond_8

    const/16 v2, 0x202b

    goto :goto_3

    :cond_8
    const/16 v2, 0x202a

    .line 1418
    :goto_3
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1419
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v2, 0x202c

    .line 1420
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 1422
    :cond_9
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_4
    if-eqz v0, :cond_a

    .line 1425
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    goto :goto_5

    :cond_a
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .line 4299
    :goto_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/getkeepsafe/relinker/ReLinker$LoadListener;->isRtl$4d1ed0c3(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 4301
    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v2, :cond_c

    if-nez v0, :cond_b

    .line 4540
    new-instance v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    invoke-direct {v2, p1}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getExitDir()I

    move-result v2

    if-ne v2, v3, :cond_c

    .line 4302
    :cond_b
    sget-object p1, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    goto :goto_6

    .line 4304
    :cond_c
    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v2, :cond_e

    if-eqz v0, :cond_d

    .line 5540
    new-instance v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    invoke-direct {v0, p1}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getExitDir()I

    move-result p1

    if-ne p1, v4, :cond_e

    .line 4305
    :cond_d
    sget-object p1, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    goto :goto_6

    :cond_e
    const-string p1, ""

    .line 1425
    :goto_6
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v1
.end method
