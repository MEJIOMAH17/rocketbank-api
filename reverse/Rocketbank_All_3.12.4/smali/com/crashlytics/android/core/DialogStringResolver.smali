.class final Lcom/crashlytics/android/core/DialogStringResolver;
.super Ljava/lang/Object;
.source "DialogStringResolver.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final promptData$73c74dcd:Lcom/android/databinding/library/baseAdapters/R;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/databinding/library/baseAdapters/R;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/crashlytics/android/core/DialogStringResolver;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/crashlytics/android/core/DialogStringResolver;->promptData$73c74dcd:Lcom/android/databinding/library/baseAdapters/R;

    return-void
.end method


# virtual methods
.method public final getAlwaysSendButtonTitle()Ljava/lang/String;
    .locals 3

    const-string v0, "com.crashlytics.CrashSubmissionAlwaysSendTitle"

    .line 71
    iget-object v1, p0, Lcom/crashlytics/android/core/DialogStringResolver;->promptData$73c74dcd:Lcom/android/databinding/library/baseAdapters/R;

    iget-object v1, v1, Lcom/android/databinding/library/baseAdapters/R;->alwaysSendButtonTitle:Ljava/lang/String;

    .line 4093
    iget-object v2, p0, Lcom/crashlytics/android/core/DialogStringResolver;->context:Landroid/content/Context;

    .line 4094
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final getCancelButtonTitle()Ljava/lang/String;
    .locals 3

    const-string v0, "com.crashlytics.CrashSubmissionCancelTitle"

    .line 80
    iget-object v1, p0, Lcom/crashlytics/android/core/DialogStringResolver;->promptData$73c74dcd:Lcom/android/databinding/library/baseAdapters/R;

    iget-object v1, v1, Lcom/android/databinding/library/baseAdapters/R;->cancelButtonTitle:Ljava/lang/String;

    .line 5093
    iget-object v2, p0, Lcom/crashlytics/android/core/DialogStringResolver;->context:Landroid/content/Context;

    .line 5094
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 3

    const-string v0, "com.crashlytics.CrashSubmissionPromptMessage"

    .line 55
    iget-object v1, p0, Lcom/crashlytics/android/core/DialogStringResolver;->promptData$73c74dcd:Lcom/android/databinding/library/baseAdapters/R;

    iget-object v1, v1, Lcom/android/databinding/library/baseAdapters/R;->message:Ljava/lang/String;

    .line 2093
    iget-object v2, p0, Lcom/crashlytics/android/core/DialogStringResolver;->context:Landroid/content/Context;

    .line 2094
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final getSendButtonTitle()Ljava/lang/String;
    .locals 3

    const-string v0, "com.crashlytics.CrashSubmissionSendTitle"

    .line 63
    iget-object v1, p0, Lcom/crashlytics/android/core/DialogStringResolver;->promptData$73c74dcd:Lcom/android/databinding/library/baseAdapters/R;

    iget-object v1, v1, Lcom/android/databinding/library/baseAdapters/R;->sendButtonTitle:Ljava/lang/String;

    .line 3093
    iget-object v2, p0, Lcom/crashlytics/android/core/DialogStringResolver;->context:Landroid/content/Context;

    .line 3094
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 3

    const-string v0, "com.crashlytics.CrashSubmissionPromptTitle"

    .line 48
    iget-object v1, p0, Lcom/crashlytics/android/core/DialogStringResolver;->promptData$73c74dcd:Lcom/android/databinding/library/baseAdapters/R;

    iget-object v1, v1, Lcom/android/databinding/library/baseAdapters/R;->title:Ljava/lang/String;

    .line 1093
    iget-object v2, p0, Lcom/crashlytics/android/core/DialogStringResolver;->context:Landroid/content/Context;

    .line 1094
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method
