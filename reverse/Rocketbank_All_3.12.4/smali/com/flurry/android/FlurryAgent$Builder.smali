.class public Lcom/flurry/android/FlurryAgent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/FlurryAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static a:Lcom/flurry/android/FlurryAgentListener;


# instance fields
.field private b:Z

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1383
    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent$Builder;->b:Z

    const/4 v1, 0x5

    .line 1386
    iput v1, p0, Lcom/flurry/android/FlurryAgent$Builder;->c:I

    const-wide/16 v1, 0x2710

    .line 1389
    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent$Builder;->d:J

    const/4 v1, 0x1

    .line 1392
    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent$Builder;->e:Z

    .line 1395
    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent$Builder;->f:Z

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .line 1483
    sget-object v0, Lcom/flurry/android/FlurryAgent$Builder;->a:Lcom/flurry/android/FlurryAgentListener;

    iget-boolean v1, p0, Lcom/flurry/android/FlurryAgent$Builder;->b:Z

    iget v2, p0, Lcom/flurry/android/FlurryAgent$Builder;->c:I

    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent$Builder;->d:J

    iget-boolean v5, p0, Lcom/flurry/android/FlurryAgent$Builder;->e:Z

    iget-boolean v6, p0, Lcom/flurry/android/FlurryAgent$Builder;->f:Z

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/FlurryAgentListener;ZIJZZLandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public withCaptureUncaughtExceptions(Z)Lcom/flurry/android/FlurryAgent$Builder;
    .locals 0

    .line 1465
    iput-boolean p1, p0, Lcom/flurry/android/FlurryAgent$Builder;->e:Z

    return-object p0
.end method

.method public withContinueSessionMillis(J)Lcom/flurry/android/FlurryAgent$Builder;
    .locals 0

    .line 1452
    iput-wide p1, p0, Lcom/flurry/android/FlurryAgent$Builder;->d:J

    return-object p0
.end method

.method public withListener(Lcom/flurry/android/FlurryAgentListener;)Lcom/flurry/android/FlurryAgent$Builder;
    .locals 0

    .line 1406
    sput-object p1, Lcom/flurry/android/FlurryAgent$Builder;->a:Lcom/flurry/android/FlurryAgentListener;

    return-object p0
.end method

.method public withLogEnabled(Z)Lcom/flurry/android/FlurryAgent$Builder;
    .locals 0

    .line 1418
    iput-boolean p1, p0, Lcom/flurry/android/FlurryAgent$Builder;->b:Z

    return-object p0
.end method

.method public withLogLevel(I)Lcom/flurry/android/FlurryAgent$Builder;
    .locals 0

    .line 1430
    iput p1, p0, Lcom/flurry/android/FlurryAgent$Builder;->c:I

    return-object p0
.end method

.method public withPulseEnabled(Z)Lcom/flurry/android/FlurryAgent$Builder;
    .locals 0

    .line 1477
    iput-boolean p1, p0, Lcom/flurry/android/FlurryAgent$Builder;->f:Z

    return-object p0
.end method
