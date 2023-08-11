.class Lcom/adjust/sdk/PackageHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/PackageHandler;

.field final synthetic val$activityPackage:Lcom/adjust/sdk/ActivityPackage;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/PackageHandler;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/PackageHandler$2;->this$0:Lcom/adjust/sdk/PackageHandler;

    iput-object p2, p0, Lcom/adjust/sdk/PackageHandler$2;->val$activityPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler$2;->this$0:Lcom/adjust/sdk/PackageHandler;

    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler$2;->val$activityPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-static {v0, v1}, Lcom/adjust/sdk/PackageHandler;->access$100(Lcom/adjust/sdk/PackageHandler;Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method
