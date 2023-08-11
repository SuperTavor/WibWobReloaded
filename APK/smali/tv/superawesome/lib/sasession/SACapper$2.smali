.class Ltv/superawesome/lib/sasession/SACapper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/sasession/SACapper;

.field final synthetic val$listener:Ltv/superawesome/lib/sasession/SACapperInterface;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sasession/SACapper;Ltv/superawesome/lib/sasession/SACapperInterface;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sasession/SACapper$2;->this$0:Ltv/superawesome/lib/sasession/SACapper;

    iput-object p2, p0, Ltv/superawesome/lib/sasession/SACapper$2;->val$listener:Ltv/superawesome/lib/sasession/SACapperInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SACapper$2;->val$listener:Ltv/superawesome/lib/sasession/SACapperInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/superawesome/lib/sasession/SACapperInterface;->didFindDAUID(I)V

    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/sasession/SACapper$2;->onFinish(Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SACapper$2;->this$0:Ltv/superawesome/lib/sasession/SACapper;

    invoke-static {v0}, Ltv/superawesome/lib/sasession/SACapper;->access$000(Ltv/superawesome/lib/sasession/SACapper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "SUPER_AWESOME_FIRST_PART_DAU"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Ltv/superawesome/lib/sautils/SAUtils;->generateUniqueKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SUPER_AWESOME_FIRST_PART_DAU"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object v1, p0, Ltv/superawesome/lib/sasession/SACapper$2;->this$0:Ltv/superawesome/lib/sasession/SACapper;

    invoke-static {v1}, Ltv/superawesome/lib/sasession/SACapper;->access$000(Ltv/superawesome/lib/sasession/SACapper;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltv/superawesome/lib/sasession/SACapper$2;->this$0:Ltv/superawesome/lib/sasession/SACapper;

    invoke-static {v1}, Ltv/superawesome/lib/sasession/SACapper;->access$000(Ltv/superawesome/lib/sasession/SACapper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Ltv/superawesome/lib/sasession/SACapper$2;->val$listener:Ltv/superawesome/lib/sasession/SACapperInterface;

    invoke-interface {v1, v0}, Ltv/superawesome/lib/sasession/SACapperInterface;->didFindDAUID(I)V

    :goto_1
    return-void

    :cond_2
    const-string v1, "unknown"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ltv/superawesome/lib/sasession/SACapper$2;->val$listener:Ltv/superawesome/lib/sasession/SACapperInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/superawesome/lib/sasession/SACapperInterface;->didFindDAUID(I)V

    goto :goto_1
.end method

.method public bridge synthetic taskToExecute()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ltv/superawesome/lib/sasession/SACapper$2;->taskToExecute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public taskToExecute()Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAdvertisingIdInfo"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Ltv/superawesome/lib/sasession/SACapper$2;->this$0:Ltv/superawesome/lib/sasession/SACapper;

    invoke-static {v3}, Ltv/superawesome/lib/sasession/SACapper;->access$000(Ltv/superawesome/lib/sasession/SACapper;)Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isLimitAdTrackingEnabled"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getId"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
