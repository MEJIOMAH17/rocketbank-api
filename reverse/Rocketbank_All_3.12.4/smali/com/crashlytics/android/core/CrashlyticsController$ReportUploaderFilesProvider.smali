.class final Lcom/crashlytics/android/core/CrashlyticsController$ReportUploaderFilesProvider;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashlyticsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReportUploaderFilesProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsController;


# direct methods
.method private constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;)V
    .locals 0

    .line 1698
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;B)V
    .locals 0

    .line 1698
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsController$ReportUploaderFilesProvider;-><init>(Lcom/crashlytics/android/core/CrashlyticsController;)V

    return-void
.end method


# virtual methods
.method public final getCompleteSessionFiles()[Ljava/io/File;
    .locals 1

    .line 1701
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsController;->listCompleteSessionFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getInvalidSessionFiles()[Ljava/io/File;
    .locals 1

    .line 1706
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsController;->getInvalidFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getNativeReportFiles()[Ljava/io/File;
    .locals 1

    .line 1711
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsController;->listNativeSessionFileDirectories()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
