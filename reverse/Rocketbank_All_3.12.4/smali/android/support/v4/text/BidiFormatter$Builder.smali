.class public final Landroid/support/v4/text/BidiFormatter$Builder;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIsRtlContext:Z

.field private mTextDirectionHeuristicCompat$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/text/BidiFormatter;->access$000(Ljava/util/Locale;)Z

    move-result v0

    .line 1166
    iput-boolean v0, p0, Landroid/support/v4/text/BidiFormatter$Builder;->mIsRtlContext:Z

    .line 1167
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->access$100$e10cd3b()Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    const/4 v0, 0x2

    .line 1168
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$Builder;->mFlags:I

    return-void
.end method


# virtual methods
.method public final build()Landroid/support/v4/text/BidiFormatter;
    .locals 5

    .line 204
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$Builder;->mFlags:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .line 205
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->access$100$e10cd3b()Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 206
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter$Builder;->mIsRtlContext:Z

    if-eqz v0, :cond_0

    .line 1197
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->access$200()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->access$300()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0

    .line 208
    :cond_1
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter$Builder;->mIsRtlContext:Z

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$Builder;->mFlags:I

    iget-object v3, p0, Landroid/support/v4/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILcom/getkeepsafe/relinker/ReLinker$LoadListener;B)V

    return-object v0
.end method
