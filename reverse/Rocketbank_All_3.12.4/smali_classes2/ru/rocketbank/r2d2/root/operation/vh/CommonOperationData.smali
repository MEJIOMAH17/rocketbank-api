.class public final Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;
.super Ljava/lang/Object;
.source "CommonOperationData.kt"


# instance fields
.field private currentComment:Ljava/lang/String;

.field private lastComment:Ljava/lang/String;

.field private final saveActionsActive:Landroid/databinding/ObservableBoolean;

.field private final updateInProgress:Landroid/databinding/ObservableBoolean;

.field private zoomLevel:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    .line 6
    iput v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->zoomLevel:F

    .line 10
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->saveActionsActive:Landroid/databinding/ObservableBoolean;

    .line 11
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->updateInProgress:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getCurrentComment()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->currentComment:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastComment()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->lastComment:Ljava/lang/String;

    return-object v0
.end method

.method public final getSaveActionsActive()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->saveActionsActive:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getUpdateInProgress()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->updateInProgress:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getZoomLevel()F
    .locals 1

    .line 6
    iget v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->zoomLevel:F

    return v0
.end method

.method public final setCurrentComment(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->currentComment:Ljava/lang/String;

    return-void
.end method

.method public final setLastComment(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->lastComment:Ljava/lang/String;

    return-void
.end method

.method public final setZoomLevel(F)V
    .locals 0

    .line 6
    iput p1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->zoomLevel:F

    return-void
.end method
