.class public Lcom/facebook/TestUserManager;
.super Ljava/lang/Object;
.source "TestUserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/TestUserManager$Mode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "TestUserManager"


# instance fields
.field private appTestAccounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private testApplicationId:Ljava/lang/String;

.field private testApplicationSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/facebook/TestUserManager;->testApplicationSecret:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/facebook/TestUserManager;->testApplicationId:Ljava/lang/String;

    return-void

    .line 63
    :cond_1
    :goto_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "Must provide app ID and secret"

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createTestAccount(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/TestUserManager$Mode;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "installed"

    const-string v2, "true"

    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "permissions"

    .line 279
    invoke-direct {p0, p1}, Lcom/facebook/TestUserManager;->getPermissionsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "access_token"

    .line 280
    invoke-virtual {p0}, Lcom/facebook/TestUserManager;->getAppAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v1, Lcom/facebook/TestUserManager$Mode;->SHARED:Lcom/facebook/TestUserManager$Mode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    const-string v1, "name"

    const-string v4, "Shared %s Testuser"

    .line 286
    new-array v5, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p3}, Lcom/facebook/TestUserManager;->getSharedTestAccountIdentifier(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "%s/accounts/test-users"

    .line 290
    new-array p3, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/TestUserManager;->testApplicationId:Ljava/lang/String;

    aput-object v1, p3, v2

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 291
    new-instance p3, Lcom/facebook/GraphRequest;

    sget-object v1, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const/4 v2, 0x0

    invoke-direct {p3, v2, p1, v0, v1}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 293
    invoke-virtual {p3}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p3

    .line 296
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p3, :cond_1

    return-object v2

    .line 304
    :cond_1
    sget-object p3, Lcom/facebook/TestUserManager$Mode;->SHARED:Lcom/facebook/TestUserManager$Mode;

    if-ne p2, p3, :cond_2

    :try_start_0
    const-string p2, "name"

    const-string p3, "name"

    .line 308
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "TestUserManager"

    const-string v0, "Could not set name"

    .line 310
    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/TestUserManager;->storeTestAccount(Lorg/json/JSONObject;)V

    :cond_2
    return-object p1
.end method

.method private findOrCreateSharedTestAccount(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/TestUserManager$Mode;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 232
    invoke-direct {p0, p1, p3}, Lcom/facebook/TestUserManager;->getSharedTestAccountIdentifier(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/TestUserManager;->findTestAccountMatchingIdentifier(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 237
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/TestUserManager;->createTestAccount(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized findTestAccountMatchingIdentifier(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/facebook/TestUserManager;->appTestAccounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "name"

    .line 218
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 219
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 222
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 216
    monitor-exit p0

    throw p1
.end method

.method private getAccessTokenForUser(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lcom/facebook/AccessToken;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/TestUserManager$Mode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/facebook/TestUserManager;->retrieveTestAccountsForAppIfNeeded()V

    .line 131
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 132
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "email"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "publish_actions"

    aput-object v1, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_0
    move-object v4, p1

    .line 136
    sget-object p1, Lcom/facebook/TestUserManager$Mode;->PRIVATE:Lcom/facebook/TestUserManager$Mode;

    if-ne p2, p1, :cond_1

    .line 137
    invoke-direct {p0, v4, p2, p3}, Lcom/facebook/TestUserManager;->createTestAccount(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0, v4, p2, p3}, Lcom/facebook/TestUserManager;->findOrCreateSharedTestAccount(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 142
    :goto_0
    new-instance p2, Lcom/facebook/AccessToken;

    const-string p3, "access_token"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/TestUserManager;->testApplicationId:Ljava/lang/String;

    const-string p3, "id"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget-object v6, Lcom/facebook/AccessTokenSource;->TEST_USER:Lcom/facebook/AccessTokenSource;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    return-object p2
.end method

.method private getPermissionsString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ","

    .line 320
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSharedTestAccountIdentifier(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1}, Lcom/facebook/TestUserManager;->getPermissionsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long p1, p1

    and-long v0, p1, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    xor-long p1, v4, v0

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/facebook/TestUserManager;->validNameStringFromInteger(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized populateTestAccounts(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 200
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 201
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    .line 202
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "name"

    const-string v4, "name"

    .line 204
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "TestUserManager"

    const-string v4, "Could not set name"

    .line 206
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    :goto_1
    invoke-direct {p0, v1}, Lcom/facebook/TestUserManager;->storeTestAccount(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 199
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized retrieveTestAccountsForAppIfNeeded()V
    .locals 6

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/facebook/TestUserManager;->appTestAccounts:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 155
    monitor-exit p0

    return-void

    .line 158
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/TestUserManager;->appTestAccounts:Ljava/util/Map;

    .line 164
    iget-object v0, p0, Lcom/facebook/TestUserManager;->testApplicationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/GraphRequest;->setDefaultBatchApplicationId(Ljava/lang/String;)V

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "access_token"

    .line 167
    invoke-virtual {p0}, Lcom/facebook/TestUserManager;->getAppAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v1, Lcom/facebook/GraphRequest;

    const-string v2, "app/accounts/test-users"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v0, v3}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    const-string v0, "testUsers"

    .line 171
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->setBatchEntryName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 172
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->setBatchEntryOmitResultOnSuccess(Z)V

    .line 174
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "access_token"

    .line 175
    invoke-virtual {p0}, Lcom/facebook/TestUserManager;->getAppAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ids"

    const-string/jumbo v5, "{result=testUsers:$.data.*.id}"

    .line 176
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "fields"

    const-string v5, "name"

    .line 177
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v4, Lcom/facebook/GraphRequest;

    const-string v5, ""

    invoke-direct {v4, v3, v5, v2, v3}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    const-string v2, "testUsers"

    .line 180
    invoke-virtual {v4, v2}, Lcom/facebook/GraphRequest;->setBatchEntryDependsOn(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 182
    new-array v3, v2, [Lcom/facebook/GraphRequest;

    aput-object v1, v3, v0

    const/4 v1, 0x1

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/facebook/GraphRequest;->executeBatchAndWait([Lcom/facebook/GraphRequest;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 184
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v2, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphResponse;

    invoke-virtual {v0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "data"

    .line 189
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 192
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphResponse;

    invoke-virtual {v1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 194
    invoke-direct {p0, v0, v1}, Lcom/facebook/TestUserManager;->populateTestAccounts(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 185
    :cond_2
    :goto_0
    :try_start_2
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unexpected number of results from TestUsers batch query"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 153
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized storeTestAccount(Lorg/json/JSONObject;)V
    .locals 2

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/facebook/TestUserManager;->appTestAccounts:Ljava/util/Map;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 212
    monitor-exit p0

    throw p1
.end method

.method private validNameStringFromInteger(J)Ljava/lang/String;
    .locals 4

    .line 255
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 256
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Perm"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-char v3, p1, v0

    if-ne v3, v2, :cond_0

    add-int/lit8 v3, v3, 0xa

    int-to-char v2, v3

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    add-int/lit8 v3, v2, 0x61

    add-int/lit8 v3, v3, -0x30

    int-to-char v3, v3

    .line 266
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAccessTokenForPrivateUser(Ljava/util/List;)Lcom/facebook/AccessToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/facebook/TestUserManager$Mode;->PRIVATE:Lcom/facebook/TestUserManager$Mode;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/TestUserManager;->getAccessTokenForUser(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object p1

    return-object p1
.end method

.method public getAccessTokenForSharedUser(Ljava/util/List;)Lcom/facebook/AccessToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/facebook/TestUserManager;->getAccessTokenForSharedUser(Ljava/util/List;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object p1

    return-object p1
.end method

.method public getAccessTokenForSharedUser(Ljava/util/List;Ljava/lang/String;)Lcom/facebook/AccessToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/facebook/TestUserManager$Mode;->SHARED:Lcom/facebook/TestUserManager$Mode;

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/TestUserManager;->getAccessTokenForUser(Ljava/util/List;Lcom/facebook/TestUserManager$Mode;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object p1

    return-object p1
.end method

.method final getAppAccessToken()Ljava/lang/String;
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/TestUserManager;->testApplicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/TestUserManager;->testApplicationSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTestApplicationId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/facebook/TestUserManager;->testApplicationId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTestApplicationSecret()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/facebook/TestUserManager;->testApplicationSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
