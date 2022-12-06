import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddEntriesToAclRequest : Tea.TeaModel {
    public class AclEntries : Tea.TeaModel {
        public var entry: String?

        public var entryDescription: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entry != nil {
                map["Entry"] = self.entry!
            }
            if self.entryDescription != nil {
                map["EntryDescription"] = self.entryDescription!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Entry") {
                self.entry = dict["Entry"] as! String
            }
            if dict.keys.contains("EntryDescription") {
                self.entryDescription = dict["EntryDescription"] as! String
            }
        }
    }
    public var aclEntries: [AddEntriesToAclRequest.AclEntries]?

    public var aclId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclEntries != nil {
            var tmp : [Any] = []
            for k in self.aclEntries! {
                tmp.append(k.toMap())
            }
            map["AclEntries"] = tmp
        }
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclEntries") {
            self.aclEntries = dict["AclEntries"] as! [AddEntriesToAclRequest.AclEntries]
        }
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AddEntriesToAclResponseBody : Tea.TeaModel {
    public var aclId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddEntriesToAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddEntriesToAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddEntriesToAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateAclsWithListenerRequest : Tea.TeaModel {
    public var aclIds: [String]?

    public var aclType: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclIds != nil {
            map["AclIds"] = self.aclIds!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclIds") {
            self.aclIds = dict["AclIds"] as! [String]
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AssociateAclsWithListenerResponseBody : Tea.TeaModel {
    public var aclIds: [String]?

    public var listenerId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclIds != nil {
            map["AclIds"] = self.aclIds!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclIds") {
            self.aclIds = dict["AclIds"] as! [String]
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AssociateAclsWithListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateAclsWithListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AssociateAclsWithListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateAdditionalCertificatesWithListenerRequest : Tea.TeaModel {
    public class Certificates : Tea.TeaModel {
        public var domain: String?

        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var acceleratorId: String?

    public var certificates: [AssociateAdditionalCertificatesWithListenerRequest.Certificates]?

    public var clientToken: String?

    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.certificates != nil {
            var tmp : [Any] = []
            for k in self.certificates! {
                tmp.append(k.toMap())
            }
            map["Certificates"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("Certificates") {
            self.certificates = dict["Certificates"] as! [AssociateAdditionalCertificatesWithListenerRequest.Certificates]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AssociateAdditionalCertificatesWithListenerResponseBody : Tea.TeaModel {
    public var listenerId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AssociateAdditionalCertificatesWithListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateAdditionalCertificatesWithListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AssociateAdditionalCertificatesWithListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachDdosToAcceleratorRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var ddosId: String?

    public var ddosRegionId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.ddosId != nil {
            map["DdosId"] = self.ddosId!
        }
        if self.ddosRegionId != nil {
            map["DdosRegionId"] = self.ddosRegionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("DdosId") {
            self.ddosId = dict["DdosId"] as! String
        }
        if dict.keys.contains("DdosRegionId") {
            self.ddosRegionId = dict["DdosRegionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AttachDdosToAcceleratorResponseBody : Tea.TeaModel {
    public var ddosId: String?

    public var gaId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ddosId != nil {
            map["DdosId"] = self.ddosId!
        }
        if self.gaId != nil {
            map["GaId"] = self.gaId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DdosId") {
            self.ddosId = dict["DdosId"] as! String
        }
        if dict.keys.contains("GaId") {
            self.gaId = dict["GaId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AttachDdosToAcceleratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachDdosToAcceleratorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AttachDdosToAcceleratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachLogStoreToEndpointGroupRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var endpointGroupIds: [String]?

    public var listenerId: String?

    public var regionId: String?

    public var slsLogStoreName: String?

    public var slsProjectName: String?

    public var slsRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointGroupIds != nil {
            map["EndpointGroupIds"] = self.endpointGroupIds!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.slsLogStoreName != nil {
            map["SlsLogStoreName"] = self.slsLogStoreName!
        }
        if self.slsProjectName != nil {
            map["SlsProjectName"] = self.slsProjectName!
        }
        if self.slsRegionId != nil {
            map["SlsRegionId"] = self.slsRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointGroupIds") {
            self.endpointGroupIds = dict["EndpointGroupIds"] as! [String]
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SlsLogStoreName") {
            self.slsLogStoreName = dict["SlsLogStoreName"] as! String
        }
        if dict.keys.contains("SlsProjectName") {
            self.slsProjectName = dict["SlsProjectName"] as! String
        }
        if dict.keys.contains("SlsRegionId") {
            self.slsRegionId = dict["SlsRegionId"] as! String
        }
    }
}

public class AttachLogStoreToEndpointGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AttachLogStoreToEndpointGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachLogStoreToEndpointGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AttachLogStoreToEndpointGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BandwidthPackageAddAcceleratorRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var bandwidthPackageId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class BandwidthPackageAddAcceleratorResponseBody : Tea.TeaModel {
    public var accelerators: [String]?

    public var bandwidthPackageId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerators != nil {
            map["Accelerators"] = self.accelerators!
        }
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accelerators") {
            self.accelerators = dict["Accelerators"] as! [String]
        }
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BandwidthPackageAddAcceleratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BandwidthPackageAddAcceleratorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BandwidthPackageAddAcceleratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BandwidthPackageRemoveAcceleratorRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var bandwidthPackageId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class BandwidthPackageRemoveAcceleratorResponseBody : Tea.TeaModel {
    public var accelerators: [String]?

    public var bandwidthPackageId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerators != nil {
            map["Accelerators"] = self.accelerators!
        }
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accelerators") {
            self.accelerators = dict["Accelerators"] as! [String]
        }
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BandwidthPackageRemoveAcceleratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BandwidthPackageRemoveAcceleratorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BandwidthPackageRemoveAcceleratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var newResourceGroupId: String?

    public var regionId: String?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("NewResourceGroupId") {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfigEndpointProbeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var enable: String?

    public var endpoint: String?

    public var endpointGroupId: String?

    public var endpointType: String?

    public var probePort: String?

    public var probeProtocol: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        if self.probePort != nil {
            map["ProbePort"] = self.probePort!
        }
        if self.probeProtocol != nil {
            map["ProbeProtocol"] = self.probeProtocol!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! String
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("EndpointType") {
            self.endpointType = dict["EndpointType"] as! String
        }
        if dict.keys.contains("ProbePort") {
            self.probePort = dict["ProbePort"] as! String
        }
        if dict.keys.contains("ProbeProtocol") {
            self.probeProtocol = dict["ProbeProtocol"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ConfigEndpointProbeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ConfigEndpointProbeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigEndpointProbeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ConfigEndpointProbeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAcceleratorRequest : Tea.TeaModel {
    public class IpSetConfig : Tea.TeaModel {
        public var accessMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessMode != nil {
                map["AccessMode"] = self.accessMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessMode") {
                self.accessMode = dict["AccessMode"] as! String
            }
        }
    }
    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var autoRenewDuration: Int32?

    public var autoUseCoupon: String?

    public var bandwidthBillingType: String?

    public var clientToken: String?

    public var duration: Int32?

    public var ipSetConfig: CreateAcceleratorRequest.IpSetConfig?

    public var name: String?

    public var pricingCycle: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var spec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ipSetConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.autoUseCoupon != nil {
            map["AutoUseCoupon"] = self.autoUseCoupon!
        }
        if self.bandwidthBillingType != nil {
            map["BandwidthBillingType"] = self.bandwidthBillingType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.ipSetConfig != nil {
            map["IpSetConfig"] = self.ipSetConfig?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("AutoUseCoupon") {
            self.autoUseCoupon = dict["AutoUseCoupon"] as! String
        }
        if dict.keys.contains("BandwidthBillingType") {
            self.bandwidthBillingType = dict["BandwidthBillingType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("IpSetConfig") {
            var model = CreateAcceleratorRequest.IpSetConfig()
            model.fromMap(dict["IpSetConfig"] as! [String: Any])
            self.ipSetConfig = model
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Spec") {
            self.spec = dict["Spec"] as! String
        }
    }
}

public class CreateAcceleratorResponseBody : Tea.TeaModel {
    public var acceleratorId: String?

    public var orderId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAcceleratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAcceleratorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAcceleratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAclRequest : Tea.TeaModel {
    public class AclEntries : Tea.TeaModel {
        public var entry: String?

        public var entryDescription: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entry != nil {
                map["Entry"] = self.entry!
            }
            if self.entryDescription != nil {
                map["EntryDescription"] = self.entryDescription!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Entry") {
                self.entry = dict["Entry"] as! String
            }
            if dict.keys.contains("EntryDescription") {
                self.entryDescription = dict["EntryDescription"] as! String
            }
        }
    }
    public var aclEntries: [CreateAclRequest.AclEntries]?

    public var aclName: String?

    public var addressIPVersion: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclEntries != nil {
            var tmp : [Any] = []
            for k in self.aclEntries! {
                tmp.append(k.toMap())
            }
            map["AclEntries"] = tmp
        }
        if self.aclName != nil {
            map["AclName"] = self.aclName!
        }
        if self.addressIPVersion != nil {
            map["AddressIPVersion"] = self.addressIPVersion!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclEntries") {
            self.aclEntries = dict["AclEntries"] as! [CreateAclRequest.AclEntries]
        }
        if dict.keys.contains("AclName") {
            self.aclName = dict["AclName"] as! String
        }
        if dict.keys.contains("AddressIPVersion") {
            self.addressIPVersion = dict["AddressIPVersion"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class CreateAclResponseBody : Tea.TeaModel {
    public var aclId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApplicationMonitorRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var address: String?

    public var clientToken: String?

    public var detectEnable: Bool?

    public var detectThreshold: Int32?

    public var detectTimes: Int32?

    public var listenerId: String?

    public var optionsJson: String?

    public var regionId: String?

    public var silenceTime: Int32?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.detectEnable != nil {
            map["DetectEnable"] = self.detectEnable!
        }
        if self.detectThreshold != nil {
            map["DetectThreshold"] = self.detectThreshold!
        }
        if self.detectTimes != nil {
            map["DetectTimes"] = self.detectTimes!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.optionsJson != nil {
            map["OptionsJson"] = self.optionsJson!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.silenceTime != nil {
            map["SilenceTime"] = self.silenceTime!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DetectEnable") {
            self.detectEnable = dict["DetectEnable"] as! Bool
        }
        if dict.keys.contains("DetectThreshold") {
            self.detectThreshold = dict["DetectThreshold"] as! Int32
        }
        if dict.keys.contains("DetectTimes") {
            self.detectTimes = dict["DetectTimes"] as! Int32
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("OptionsJson") {
            self.optionsJson = dict["OptionsJson"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SilenceTime") {
            self.silenceTime = dict["SilenceTime"] as! Int32
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class CreateApplicationMonitorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateApplicationMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationMonitorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateApplicationMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBandwidthPackageRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var autoRenewDuration: Int32?

    public var autoUseCoupon: String?

    public var bandwidth: Int32?

    public var bandwidthType: String?

    public var billingType: String?

    public var cbnGeographicRegionIdA: String?

    public var cbnGeographicRegionIdB: String?

    public var chargeType: String?

    public var clientToken: String?

    public var duration: String?

    public var pricingCycle: String?

    public var ratio: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.autoUseCoupon != nil {
            map["AutoUseCoupon"] = self.autoUseCoupon!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.bandwidthType != nil {
            map["BandwidthType"] = self.bandwidthType!
        }
        if self.billingType != nil {
            map["BillingType"] = self.billingType!
        }
        if self.cbnGeographicRegionIdA != nil {
            map["CbnGeographicRegionIdA"] = self.cbnGeographicRegionIdA!
        }
        if self.cbnGeographicRegionIdB != nil {
            map["CbnGeographicRegionIdB"] = self.cbnGeographicRegionIdB!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.ratio != nil {
            map["Ratio"] = self.ratio!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("AutoUseCoupon") {
            self.autoUseCoupon = dict["AutoUseCoupon"] as! String
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("BandwidthType") {
            self.bandwidthType = dict["BandwidthType"] as! String
        }
        if dict.keys.contains("BillingType") {
            self.billingType = dict["BillingType"] as! String
        }
        if dict.keys.contains("CbnGeographicRegionIdA") {
            self.cbnGeographicRegionIdA = dict["CbnGeographicRegionIdA"] as! String
        }
        if dict.keys.contains("CbnGeographicRegionIdB") {
            self.cbnGeographicRegionIdB = dict["CbnGeographicRegionIdB"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Ratio") {
            self.ratio = dict["Ratio"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateBandwidthPackageResponseBody : Tea.TeaModel {
    public var bandwidthPackageId: String?

    public var orderId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateBandwidthPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBandwidthPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateBandwidthPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBasicAccelerateIpRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var ipSetId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ipSetId != nil {
            map["IpSetId"] = self.ipSetId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("IpSetId") {
            self.ipSetId = dict["IpSetId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateBasicAccelerateIpResponseBody : Tea.TeaModel {
    public var accelerateIpAddress: String?

    public var accelerateIpId: String?

    public var acceleratorId: String?

    public var ipSetId: String?

    public var requestId: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateIpAddress != nil {
            map["AccelerateIpAddress"] = self.accelerateIpAddress!
        }
        if self.accelerateIpId != nil {
            map["AccelerateIpId"] = self.accelerateIpId!
        }
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.ipSetId != nil {
            map["IpSetId"] = self.ipSetId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateIpAddress") {
            self.accelerateIpAddress = dict["AccelerateIpAddress"] as! String
        }
        if dict.keys.contains("AccelerateIpId") {
            self.accelerateIpId = dict["AccelerateIpId"] as! String
        }
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("IpSetId") {
            self.ipSetId = dict["IpSetId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class CreateBasicAccelerateIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBasicAccelerateIpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateBasicAccelerateIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBasicAccelerateIpEndpointRelationRequest : Tea.TeaModel {
    public var accelerateIpId: String?

    public var acceleratorId: String?

    public var clientToken: String?

    public var endpointId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateIpId != nil {
            map["AccelerateIpId"] = self.accelerateIpId!
        }
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateIpId") {
            self.accelerateIpId = dict["AccelerateIpId"] as! String
        }
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateBasicAccelerateIpEndpointRelationResponseBody : Tea.TeaModel {
    public var accelerateIpId: String?

    public var acceleratorId: String?

    public var endpointId: String?

    public var requestId: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateIpId != nil {
            map["AccelerateIpId"] = self.accelerateIpId!
        }
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateIpId") {
            self.accelerateIpId = dict["AccelerateIpId"] as! String
        }
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class CreateBasicAccelerateIpEndpointRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBasicAccelerateIpEndpointRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateBasicAccelerateIpEndpointRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBasicAccelerateIpEndpointRelationsRequest : Tea.TeaModel {
    public class AccelerateIpEndpointRelations : Tea.TeaModel {
        public var accelerateIpId: String?

        public var endpointId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accelerateIpId != nil {
                map["AccelerateIpId"] = self.accelerateIpId!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccelerateIpId") {
                self.accelerateIpId = dict["AccelerateIpId"] as! String
            }
            if dict.keys.contains("EndpointId") {
                self.endpointId = dict["EndpointId"] as! String
            }
        }
    }
    public var accelerateIpEndpointRelations: [CreateBasicAccelerateIpEndpointRelationsRequest.AccelerateIpEndpointRelations]?

    public var acceleratorId: String?

    public var clientToken: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateIpEndpointRelations != nil {
            var tmp : [Any] = []
            for k in self.accelerateIpEndpointRelations! {
                tmp.append(k.toMap())
            }
            map["AccelerateIpEndpointRelations"] = tmp
        }
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateIpEndpointRelations") {
            self.accelerateIpEndpointRelations = dict["AccelerateIpEndpointRelations"] as! [CreateBasicAccelerateIpEndpointRelationsRequest.AccelerateIpEndpointRelations]
        }
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateBasicAccelerateIpEndpointRelationsResponseBody : Tea.TeaModel {
    public var acceleratorId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateBasicAccelerateIpEndpointRelationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBasicAccelerateIpEndpointRelationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateBasicAccelerateIpEndpointRelationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBasicAcceleratorRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var autoRenewDuration: Int32?

    public var autoUseCoupon: String?

    public var bandwidthBillingType: String?

    public var clientToken: String?

    public var duration: Int32?

    public var pricingCycle: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.autoUseCoupon != nil {
            map["AutoUseCoupon"] = self.autoUseCoupon!
        }
        if self.bandwidthBillingType != nil {
            map["BandwidthBillingType"] = self.bandwidthBillingType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("AutoUseCoupon") {
            self.autoUseCoupon = dict["AutoUseCoupon"] as! String
        }
        if dict.keys.contains("BandwidthBillingType") {
            self.bandwidthBillingType = dict["BandwidthBillingType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class CreateBasicAcceleratorResponseBody : Tea.TeaModel {
    public var acceleratorId: String?

    public var orderId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateBasicAcceleratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBasicAcceleratorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateBasicAcceleratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBasicEndpointGroupRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var description_: String?

    public var endpointAddress: String?

    public var endpointGroupRegion: String?

    public var endpointSubAddress: String?

    public var endpointType: String?

    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endpointAddress != nil {
            map["EndpointAddress"] = self.endpointAddress!
        }
        if self.endpointGroupRegion != nil {
            map["EndpointGroupRegion"] = self.endpointGroupRegion!
        }
        if self.endpointSubAddress != nil {
            map["EndpointSubAddress"] = self.endpointSubAddress!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndpointAddress") {
            self.endpointAddress = dict["EndpointAddress"] as! String
        }
        if dict.keys.contains("EndpointGroupRegion") {
            self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
        }
        if dict.keys.contains("EndpointSubAddress") {
            self.endpointSubAddress = dict["EndpointSubAddress"] as! String
        }
        if dict.keys.contains("EndpointType") {
            self.endpointType = dict["EndpointType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateBasicEndpointGroupResponseBody : Tea.TeaModel {
    public var endpointGroupId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateBasicEndpointGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBasicEndpointGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateBasicEndpointGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBasicIpSetRequest : Tea.TeaModel {
    public var accelerateRegionId: String?

    public var acceleratorId: String?

    public var bandwidth: Int64?

    public var clientToken: String?

    public var ispType: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateRegionId != nil {
            map["AccelerateRegionId"] = self.accelerateRegionId!
        }
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ispType != nil {
            map["IspType"] = self.ispType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateRegionId") {
            self.accelerateRegionId = dict["AccelerateRegionId"] as! String
        }
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int64
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("IspType") {
            self.ispType = dict["IspType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateBasicIpSetResponseBody : Tea.TeaModel {
    public var ipSetId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipSetId != nil {
            map["IpSetId"] = self.ipSetId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpSetId") {
            self.ipSetId = dict["IpSetId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateBasicIpSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBasicIpSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateBasicIpSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomRoutingEndpointGroupDestinationsRequest : Tea.TeaModel {
    public class DestinationConfigurations : Tea.TeaModel {
        public var fromPort: Int32?

        public var protocols: [String]?

        public var toPort: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fromPort != nil {
                map["FromPort"] = self.fromPort!
            }
            if self.protocols != nil {
                map["Protocols"] = self.protocols!
            }
            if self.toPort != nil {
                map["ToPort"] = self.toPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FromPort") {
                self.fromPort = dict["FromPort"] as! Int32
            }
            if dict.keys.contains("Protocols") {
                self.protocols = dict["Protocols"] as! [String]
            }
            if dict.keys.contains("ToPort") {
                self.toPort = dict["ToPort"] as! Int32
            }
        }
    }
    public var clientToken: String?

    public var destinationConfigurations: [CreateCustomRoutingEndpointGroupDestinationsRequest.DestinationConfigurations]?

    public var dryRun: Bool?

    public var endpointGroupId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.destinationConfigurations != nil {
            var tmp : [Any] = []
            for k in self.destinationConfigurations! {
                tmp.append(k.toMap())
            }
            map["DestinationConfigurations"] = tmp
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DestinationConfigurations") {
            self.destinationConfigurations = dict["DestinationConfigurations"] as! [CreateCustomRoutingEndpointGroupDestinationsRequest.DestinationConfigurations]
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateCustomRoutingEndpointGroupDestinationsResponseBody : Tea.TeaModel {
    public var destinationIds: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationIds != nil {
            map["DestinationIds"] = self.destinationIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestinationIds") {
            self.destinationIds = dict["DestinationIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCustomRoutingEndpointGroupDestinationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomRoutingEndpointGroupDestinationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCustomRoutingEndpointGroupDestinationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomRoutingEndpointGroupsRequest : Tea.TeaModel {
    public class EndpointGroupConfigurations : Tea.TeaModel {
        public class DestinationConfigurations : Tea.TeaModel {
            public var fromPort: Int32?

            public var protocols: [String]?

            public var toPort: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fromPort != nil {
                    map["FromPort"] = self.fromPort!
                }
                if self.protocols != nil {
                    map["Protocols"] = self.protocols!
                }
                if self.toPort != nil {
                    map["ToPort"] = self.toPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FromPort") {
                    self.fromPort = dict["FromPort"] as! Int32
                }
                if dict.keys.contains("Protocols") {
                    self.protocols = dict["Protocols"] as! [String]
                }
                if dict.keys.contains("ToPort") {
                    self.toPort = dict["ToPort"] as! Int32
                }
            }
        }
        public class EndpointConfigurations : Tea.TeaModel {
            public class PolicyConfigurations : Tea.TeaModel {
                public class PortRanges : Tea.TeaModel {
                    public var fromPort: Int32?

                    public var toPort: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.fromPort != nil {
                            map["FromPort"] = self.fromPort!
                        }
                        if self.toPort != nil {
                            map["ToPort"] = self.toPort!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("FromPort") {
                            self.fromPort = dict["FromPort"] as! Int32
                        }
                        if dict.keys.contains("ToPort") {
                            self.toPort = dict["ToPort"] as! Int32
                        }
                    }
                }
                public var address: String?

                public var portRanges: [CreateCustomRoutingEndpointGroupsRequest.EndpointGroupConfigurations.EndpointConfigurations.PolicyConfigurations.PortRanges]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.address != nil {
                        map["Address"] = self.address!
                    }
                    if self.portRanges != nil {
                        var tmp : [Any] = []
                        for k in self.portRanges! {
                            tmp.append(k.toMap())
                        }
                        map["PortRanges"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Address") {
                        self.address = dict["Address"] as! String
                    }
                    if dict.keys.contains("PortRanges") {
                        self.portRanges = dict["PortRanges"] as! [CreateCustomRoutingEndpointGroupsRequest.EndpointGroupConfigurations.EndpointConfigurations.PolicyConfigurations.PortRanges]
                    }
                }
            }
            public var endpoint: String?

            public var policyConfigurations: [CreateCustomRoutingEndpointGroupsRequest.EndpointGroupConfigurations.EndpointConfigurations.PolicyConfigurations]?

            public var trafficToEndpointPolicy: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.policyConfigurations != nil {
                    var tmp : [Any] = []
                    for k in self.policyConfigurations! {
                        tmp.append(k.toMap())
                    }
                    map["PolicyConfigurations"] = tmp
                }
                if self.trafficToEndpointPolicy != nil {
                    map["TrafficToEndpointPolicy"] = self.trafficToEndpointPolicy!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Endpoint") {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("PolicyConfigurations") {
                    self.policyConfigurations = dict["PolicyConfigurations"] as! [CreateCustomRoutingEndpointGroupsRequest.EndpointGroupConfigurations.EndpointConfigurations.PolicyConfigurations]
                }
                if dict.keys.contains("TrafficToEndpointPolicy") {
                    self.trafficToEndpointPolicy = dict["TrafficToEndpointPolicy"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var description_: String?

        public var destinationConfigurations: [CreateCustomRoutingEndpointGroupsRequest.EndpointGroupConfigurations.DestinationConfigurations]?

        public var endpointConfigurations: [CreateCustomRoutingEndpointGroupsRequest.EndpointGroupConfigurations.EndpointConfigurations]?

        public var endpointGroupRegion: String?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destinationConfigurations != nil {
                var tmp : [Any] = []
                for k in self.destinationConfigurations! {
                    tmp.append(k.toMap())
                }
                map["DestinationConfigurations"] = tmp
            }
            if self.endpointConfigurations != nil {
                var tmp : [Any] = []
                for k in self.endpointConfigurations! {
                    tmp.append(k.toMap())
                }
                map["EndpointConfigurations"] = tmp
            }
            if self.endpointGroupRegion != nil {
                map["EndpointGroupRegion"] = self.endpointGroupRegion!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestinationConfigurations") {
                self.destinationConfigurations = dict["DestinationConfigurations"] as! [CreateCustomRoutingEndpointGroupsRequest.EndpointGroupConfigurations.DestinationConfigurations]
            }
            if dict.keys.contains("EndpointConfigurations") {
                self.endpointConfigurations = dict["EndpointConfigurations"] as! [CreateCustomRoutingEndpointGroupsRequest.EndpointGroupConfigurations.EndpointConfigurations]
            }
            if dict.keys.contains("EndpointGroupRegion") {
                self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var acceleratorId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointGroupConfigurations: [CreateCustomRoutingEndpointGroupsRequest.EndpointGroupConfigurations]?

    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointGroupConfigurations != nil {
            var tmp : [Any] = []
            for k in self.endpointGroupConfigurations! {
                tmp.append(k.toMap())
            }
            map["EndpointGroupConfigurations"] = tmp
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointGroupConfigurations") {
            self.endpointGroupConfigurations = dict["EndpointGroupConfigurations"] as! [CreateCustomRoutingEndpointGroupsRequest.EndpointGroupConfigurations]
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateCustomRoutingEndpointGroupsResponseBody : Tea.TeaModel {
    public var endpointGroupIds: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointGroupIds != nil {
            map["EndpointGroupIds"] = self.endpointGroupIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointGroupIds") {
            self.endpointGroupIds = dict["EndpointGroupIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCustomRoutingEndpointGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomRoutingEndpointGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCustomRoutingEndpointGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomRoutingEndpointTrafficPoliciesRequest : Tea.TeaModel {
    public class PolicyConfigurations : Tea.TeaModel {
        public class PortRanges : Tea.TeaModel {
            public var fromPort: Int32?

            public var toPort: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fromPort != nil {
                    map["FromPort"] = self.fromPort!
                }
                if self.toPort != nil {
                    map["ToPort"] = self.toPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FromPort") {
                    self.fromPort = dict["FromPort"] as! Int32
                }
                if dict.keys.contains("ToPort") {
                    self.toPort = dict["ToPort"] as! Int32
                }
            }
        }
        public var address: String?

        public var portRanges: [CreateCustomRoutingEndpointTrafficPoliciesRequest.PolicyConfigurations.PortRanges]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.portRanges != nil {
                var tmp : [Any] = []
                for k in self.portRanges! {
                    tmp.append(k.toMap())
                }
                map["PortRanges"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("PortRanges") {
                self.portRanges = dict["PortRanges"] as! [CreateCustomRoutingEndpointTrafficPoliciesRequest.PolicyConfigurations.PortRanges]
            }
        }
    }
    public var clientToken: String?

    public var endpointId: String?

    public var policyConfigurations: [CreateCustomRoutingEndpointTrafficPoliciesRequest.PolicyConfigurations]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.policyConfigurations != nil {
            var tmp : [Any] = []
            for k in self.policyConfigurations! {
                tmp.append(k.toMap())
            }
            map["PolicyConfigurations"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("PolicyConfigurations") {
            self.policyConfigurations = dict["PolicyConfigurations"] as! [CreateCustomRoutingEndpointTrafficPoliciesRequest.PolicyConfigurations]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateCustomRoutingEndpointTrafficPoliciesResponseBody : Tea.TeaModel {
    public var policyIds: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyIds") {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCustomRoutingEndpointTrafficPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomRoutingEndpointTrafficPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCustomRoutingEndpointTrafficPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomRoutingEndpointsRequest : Tea.TeaModel {
    public class EndpointConfigurations : Tea.TeaModel {
        public class PolicyConfigurations : Tea.TeaModel {
            public class PortRanges : Tea.TeaModel {
                public var fromPort: Int32?

                public var toPort: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fromPort != nil {
                        map["FromPort"] = self.fromPort!
                    }
                    if self.toPort != nil {
                        map["ToPort"] = self.toPort!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FromPort") {
                        self.fromPort = dict["FromPort"] as! Int32
                    }
                    if dict.keys.contains("ToPort") {
                        self.toPort = dict["ToPort"] as! Int32
                    }
                }
            }
            public var address: String?

            public var portRanges: [CreateCustomRoutingEndpointsRequest.EndpointConfigurations.PolicyConfigurations.PortRanges]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.portRanges != nil {
                    var tmp : [Any] = []
                    for k in self.portRanges! {
                        tmp.append(k.toMap())
                    }
                    map["PortRanges"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("PortRanges") {
                    self.portRanges = dict["PortRanges"] as! [CreateCustomRoutingEndpointsRequest.EndpointConfigurations.PolicyConfigurations.PortRanges]
                }
            }
        }
        public var endpoint: String?

        public var policyConfigurations: [CreateCustomRoutingEndpointsRequest.EndpointConfigurations.PolicyConfigurations]?

        public var trafficToEndpointPolicy: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.policyConfigurations != nil {
                var tmp : [Any] = []
                for k in self.policyConfigurations! {
                    tmp.append(k.toMap())
                }
                map["PolicyConfigurations"] = tmp
            }
            if self.trafficToEndpointPolicy != nil {
                map["TrafficToEndpointPolicy"] = self.trafficToEndpointPolicy!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("PolicyConfigurations") {
                self.policyConfigurations = dict["PolicyConfigurations"] as! [CreateCustomRoutingEndpointsRequest.EndpointConfigurations.PolicyConfigurations]
            }
            if dict.keys.contains("TrafficToEndpointPolicy") {
                self.trafficToEndpointPolicy = dict["TrafficToEndpointPolicy"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var clientToken: String?

    public var endpointConfigurations: [CreateCustomRoutingEndpointsRequest.EndpointConfigurations]?

    public var endpointGroupId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointConfigurations != nil {
            var tmp : [Any] = []
            for k in self.endpointConfigurations! {
                tmp.append(k.toMap())
            }
            map["EndpointConfigurations"] = tmp
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointConfigurations") {
            self.endpointConfigurations = dict["EndpointConfigurations"] as! [CreateCustomRoutingEndpointsRequest.EndpointConfigurations]
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateCustomRoutingEndpointsResponseBody : Tea.TeaModel {
    public var endpointIds: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointIds != nil {
            map["EndpointIds"] = self.endpointIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointIds") {
            self.endpointIds = dict["EndpointIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCustomRoutingEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomRoutingEndpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCustomRoutingEndpointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEndpointGroupRequest : Tea.TeaModel {
    public class EndpointConfigurations : Tea.TeaModel {
        public var enableClientIPPreservation: Bool?

        public var endpoint: String?

        public var type: String?

        public var weight: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableClientIPPreservation != nil {
                map["EnableClientIPPreservation"] = self.enableClientIPPreservation!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableClientIPPreservation") {
                self.enableClientIPPreservation = dict["EnableClientIPPreservation"] as! Bool
            }
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Weight") {
                self.weight = dict["Weight"] as! Int32
            }
        }
    }
    public class PortOverrides : Tea.TeaModel {
        public var endpointPort: Int32?

        public var listenerPort: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointPort != nil {
                map["EndpointPort"] = self.endpointPort!
            }
            if self.listenerPort != nil {
                map["ListenerPort"] = self.listenerPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndpointPort") {
                self.endpointPort = dict["EndpointPort"] as! Int32
            }
            if dict.keys.contains("ListenerPort") {
                self.listenerPort = dict["ListenerPort"] as! Int32
            }
        }
    }
    public var acceleratorId: String?

    public var clientToken: String?

    public var description_: String?

    public var endpointConfigurations: [CreateEndpointGroupRequest.EndpointConfigurations]?

    public var endpointGroupRegion: String?

    public var endpointGroupType: String?

    public var endpointRequestProtocol: String?

    public var healthCheckEnabled: Bool?

    public var healthCheckIntervalSeconds: Int32?

    public var healthCheckPath: String?

    public var healthCheckPort: Int32?

    public var healthCheckProtocol: String?

    public var listenerId: String?

    public var name: String?

    public var portOverrides: [CreateEndpointGroupRequest.PortOverrides]?

    public var regionId: String?

    public var thresholdCount: Int32?

    public var trafficPercentage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endpointConfigurations != nil {
            var tmp : [Any] = []
            for k in self.endpointConfigurations! {
                tmp.append(k.toMap())
            }
            map["EndpointConfigurations"] = tmp
        }
        if self.endpointGroupRegion != nil {
            map["EndpointGroupRegion"] = self.endpointGroupRegion!
        }
        if self.endpointGroupType != nil {
            map["EndpointGroupType"] = self.endpointGroupType!
        }
        if self.endpointRequestProtocol != nil {
            map["EndpointRequestProtocol"] = self.endpointRequestProtocol!
        }
        if self.healthCheckEnabled != nil {
            map["HealthCheckEnabled"] = self.healthCheckEnabled!
        }
        if self.healthCheckIntervalSeconds != nil {
            map["HealthCheckIntervalSeconds"] = self.healthCheckIntervalSeconds!
        }
        if self.healthCheckPath != nil {
            map["HealthCheckPath"] = self.healthCheckPath!
        }
        if self.healthCheckPort != nil {
            map["HealthCheckPort"] = self.healthCheckPort!
        }
        if self.healthCheckProtocol != nil {
            map["HealthCheckProtocol"] = self.healthCheckProtocol!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.portOverrides != nil {
            var tmp : [Any] = []
            for k in self.portOverrides! {
                tmp.append(k.toMap())
            }
            map["PortOverrides"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.thresholdCount != nil {
            map["ThresholdCount"] = self.thresholdCount!
        }
        if self.trafficPercentage != nil {
            map["TrafficPercentage"] = self.trafficPercentage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndpointConfigurations") {
            self.endpointConfigurations = dict["EndpointConfigurations"] as! [CreateEndpointGroupRequest.EndpointConfigurations]
        }
        if dict.keys.contains("EndpointGroupRegion") {
            self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
        }
        if dict.keys.contains("EndpointGroupType") {
            self.endpointGroupType = dict["EndpointGroupType"] as! String
        }
        if dict.keys.contains("EndpointRequestProtocol") {
            self.endpointRequestProtocol = dict["EndpointRequestProtocol"] as! String
        }
        if dict.keys.contains("HealthCheckEnabled") {
            self.healthCheckEnabled = dict["HealthCheckEnabled"] as! Bool
        }
        if dict.keys.contains("HealthCheckIntervalSeconds") {
            self.healthCheckIntervalSeconds = dict["HealthCheckIntervalSeconds"] as! Int32
        }
        if dict.keys.contains("HealthCheckPath") {
            self.healthCheckPath = dict["HealthCheckPath"] as! String
        }
        if dict.keys.contains("HealthCheckPort") {
            self.healthCheckPort = dict["HealthCheckPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckProtocol") {
            self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PortOverrides") {
            self.portOverrides = dict["PortOverrides"] as! [CreateEndpointGroupRequest.PortOverrides]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ThresholdCount") {
            self.thresholdCount = dict["ThresholdCount"] as! Int32
        }
        if dict.keys.contains("TrafficPercentage") {
            self.trafficPercentage = dict["TrafficPercentage"] as! Int32
        }
    }
}

public class CreateEndpointGroupResponseBody : Tea.TeaModel {
    public var endpointGroupId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateEndpointGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEndpointGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateEndpointGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEndpointGroupsRequest : Tea.TeaModel {
    public class EndpointGroupConfigurations : Tea.TeaModel {
        public class EndpointConfigurations : Tea.TeaModel {
            public var endpoint: String?

            public var type: String?

            public var weight: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Endpoint") {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int64
                }
            }
        }
        public class PortOverrides : Tea.TeaModel {
            public var endpointPort: Int64?

            public var listenerPort: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpointPort != nil {
                    map["EndpointPort"] = self.endpointPort!
                }
                if self.listenerPort != nil {
                    map["ListenerPort"] = self.listenerPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndpointPort") {
                    self.endpointPort = dict["EndpointPort"] as! Int64
                }
                if dict.keys.contains("ListenerPort") {
                    self.listenerPort = dict["ListenerPort"] as! Int64
                }
            }
        }
        public var enableClientIPPreservationProxyProtocol: Bool?

        public var enableClientIPPreservationToa: Bool?

        public var endpointConfigurations: [CreateEndpointGroupsRequest.EndpointGroupConfigurations.EndpointConfigurations]?

        public var endpointGroupDescription: String?

        public var endpointGroupName: String?

        public var endpointGroupRegion: String?

        public var endpointGroupType: String?

        public var endpointRequestProtocol: String?

        public var healthCheckEnabled: Bool?

        public var healthCheckIntervalSeconds: Int64?

        public var healthCheckPath: String?

        public var healthCheckPort: Int64?

        public var healthCheckProtocol: String?

        public var portOverrides: [CreateEndpointGroupsRequest.EndpointGroupConfigurations.PortOverrides]?

        public var thresholdCount: Int64?

        public var trafficPercentage: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableClientIPPreservationProxyProtocol != nil {
                map["EnableClientIPPreservationProxyProtocol"] = self.enableClientIPPreservationProxyProtocol!
            }
            if self.enableClientIPPreservationToa != nil {
                map["EnableClientIPPreservationToa"] = self.enableClientIPPreservationToa!
            }
            if self.endpointConfigurations != nil {
                var tmp : [Any] = []
                for k in self.endpointConfigurations! {
                    tmp.append(k.toMap())
                }
                map["EndpointConfigurations"] = tmp
            }
            if self.endpointGroupDescription != nil {
                map["EndpointGroupDescription"] = self.endpointGroupDescription!
            }
            if self.endpointGroupName != nil {
                map["EndpointGroupName"] = self.endpointGroupName!
            }
            if self.endpointGroupRegion != nil {
                map["EndpointGroupRegion"] = self.endpointGroupRegion!
            }
            if self.endpointGroupType != nil {
                map["EndpointGroupType"] = self.endpointGroupType!
            }
            if self.endpointRequestProtocol != nil {
                map["EndpointRequestProtocol"] = self.endpointRequestProtocol!
            }
            if self.healthCheckEnabled != nil {
                map["HealthCheckEnabled"] = self.healthCheckEnabled!
            }
            if self.healthCheckIntervalSeconds != nil {
                map["HealthCheckIntervalSeconds"] = self.healthCheckIntervalSeconds!
            }
            if self.healthCheckPath != nil {
                map["HealthCheckPath"] = self.healthCheckPath!
            }
            if self.healthCheckPort != nil {
                map["HealthCheckPort"] = self.healthCheckPort!
            }
            if self.healthCheckProtocol != nil {
                map["HealthCheckProtocol"] = self.healthCheckProtocol!
            }
            if self.portOverrides != nil {
                var tmp : [Any] = []
                for k in self.portOverrides! {
                    tmp.append(k.toMap())
                }
                map["PortOverrides"] = tmp
            }
            if self.thresholdCount != nil {
                map["ThresholdCount"] = self.thresholdCount!
            }
            if self.trafficPercentage != nil {
                map["TrafficPercentage"] = self.trafficPercentage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableClientIPPreservationProxyProtocol") {
                self.enableClientIPPreservationProxyProtocol = dict["EnableClientIPPreservationProxyProtocol"] as! Bool
            }
            if dict.keys.contains("EnableClientIPPreservationToa") {
                self.enableClientIPPreservationToa = dict["EnableClientIPPreservationToa"] as! Bool
            }
            if dict.keys.contains("EndpointConfigurations") {
                self.endpointConfigurations = dict["EndpointConfigurations"] as! [CreateEndpointGroupsRequest.EndpointGroupConfigurations.EndpointConfigurations]
            }
            if dict.keys.contains("EndpointGroupDescription") {
                self.endpointGroupDescription = dict["EndpointGroupDescription"] as! String
            }
            if dict.keys.contains("EndpointGroupName") {
                self.endpointGroupName = dict["EndpointGroupName"] as! String
            }
            if dict.keys.contains("EndpointGroupRegion") {
                self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
            }
            if dict.keys.contains("EndpointGroupType") {
                self.endpointGroupType = dict["EndpointGroupType"] as! String
            }
            if dict.keys.contains("EndpointRequestProtocol") {
                self.endpointRequestProtocol = dict["EndpointRequestProtocol"] as! String
            }
            if dict.keys.contains("HealthCheckEnabled") {
                self.healthCheckEnabled = dict["HealthCheckEnabled"] as! Bool
            }
            if dict.keys.contains("HealthCheckIntervalSeconds") {
                self.healthCheckIntervalSeconds = dict["HealthCheckIntervalSeconds"] as! Int64
            }
            if dict.keys.contains("HealthCheckPath") {
                self.healthCheckPath = dict["HealthCheckPath"] as! String
            }
            if dict.keys.contains("HealthCheckPort") {
                self.healthCheckPort = dict["HealthCheckPort"] as! Int64
            }
            if dict.keys.contains("HealthCheckProtocol") {
                self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
            }
            if dict.keys.contains("PortOverrides") {
                self.portOverrides = dict["PortOverrides"] as! [CreateEndpointGroupsRequest.EndpointGroupConfigurations.PortOverrides]
            }
            if dict.keys.contains("ThresholdCount") {
                self.thresholdCount = dict["ThresholdCount"] as! Int64
            }
            if dict.keys.contains("TrafficPercentage") {
                self.trafficPercentage = dict["TrafficPercentage"] as! Int64
            }
        }
    }
    public var acceleratorId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointGroupConfigurations: [CreateEndpointGroupsRequest.EndpointGroupConfigurations]?

    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointGroupConfigurations != nil {
            var tmp : [Any] = []
            for k in self.endpointGroupConfigurations! {
                tmp.append(k.toMap())
            }
            map["EndpointGroupConfigurations"] = tmp
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointGroupConfigurations") {
            self.endpointGroupConfigurations = dict["EndpointGroupConfigurations"] as! [CreateEndpointGroupsRequest.EndpointGroupConfigurations]
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateEndpointGroupsResponseBody : Tea.TeaModel {
    public var endpointGroupIds: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointGroupIds != nil {
            map["EndpointGroupIds"] = self.endpointGroupIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointGroupIds") {
            self.endpointGroupIds = dict["EndpointGroupIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateEndpointGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEndpointGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateEndpointGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateForwardingRulesRequest : Tea.TeaModel {
    public class ForwardingRules : Tea.TeaModel {
        public class RuleActions : Tea.TeaModel {
            public class ForwardGroupConfig : Tea.TeaModel {
                public class ServerGroupTuples : Tea.TeaModel {
                    public var endpointGroupId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.endpointGroupId != nil {
                            map["EndpointGroupId"] = self.endpointGroupId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EndpointGroupId") {
                            self.endpointGroupId = dict["EndpointGroupId"] as! String
                        }
                    }
                }
                public var serverGroupTuples: [CreateForwardingRulesRequest.ForwardingRules.RuleActions.ForwardGroupConfig.ServerGroupTuples]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serverGroupTuples != nil {
                        var tmp : [Any] = []
                        for k in self.serverGroupTuples! {
                            tmp.append(k.toMap())
                        }
                        map["ServerGroupTuples"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupTuples") {
                        self.serverGroupTuples = dict["ServerGroupTuples"] as! [CreateForwardingRulesRequest.ForwardingRules.RuleActions.ForwardGroupConfig.ServerGroupTuples]
                    }
                }
            }
            public var forwardGroupConfig: CreateForwardingRulesRequest.ForwardingRules.RuleActions.ForwardGroupConfig?

            public var order: Int32?

            public var ruleActionType: String?

            public var ruleActionValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.forwardGroupConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.forwardGroupConfig != nil {
                    map["ForwardGroupConfig"] = self.forwardGroupConfig?.toMap()
                }
                if self.order != nil {
                    map["Order"] = self.order!
                }
                if self.ruleActionType != nil {
                    map["RuleActionType"] = self.ruleActionType!
                }
                if self.ruleActionValue != nil {
                    map["RuleActionValue"] = self.ruleActionValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ForwardGroupConfig") {
                    var model = CreateForwardingRulesRequest.ForwardingRules.RuleActions.ForwardGroupConfig()
                    model.fromMap(dict["ForwardGroupConfig"] as! [String: Any])
                    self.forwardGroupConfig = model
                }
                if dict.keys.contains("Order") {
                    self.order = dict["Order"] as! Int32
                }
                if dict.keys.contains("RuleActionType") {
                    self.ruleActionType = dict["RuleActionType"] as! String
                }
                if dict.keys.contains("RuleActionValue") {
                    self.ruleActionValue = dict["RuleActionValue"] as! String
                }
            }
        }
        public class RuleConditions : Tea.TeaModel {
            public class HostConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public class PathConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public var hostConfig: CreateForwardingRulesRequest.ForwardingRules.RuleConditions.HostConfig?

            public var pathConfig: CreateForwardingRulesRequest.ForwardingRules.RuleConditions.PathConfig?

            public var ruleConditionType: String?

            public var ruleConditionValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.hostConfig?.validate()
                try self.pathConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hostConfig != nil {
                    map["HostConfig"] = self.hostConfig?.toMap()
                }
                if self.pathConfig != nil {
                    map["PathConfig"] = self.pathConfig?.toMap()
                }
                if self.ruleConditionType != nil {
                    map["RuleConditionType"] = self.ruleConditionType!
                }
                if self.ruleConditionValue != nil {
                    map["RuleConditionValue"] = self.ruleConditionValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HostConfig") {
                    var model = CreateForwardingRulesRequest.ForwardingRules.RuleConditions.HostConfig()
                    model.fromMap(dict["HostConfig"] as! [String: Any])
                    self.hostConfig = model
                }
                if dict.keys.contains("PathConfig") {
                    var model = CreateForwardingRulesRequest.ForwardingRules.RuleConditions.PathConfig()
                    model.fromMap(dict["PathConfig"] as! [String: Any])
                    self.pathConfig = model
                }
                if dict.keys.contains("RuleConditionType") {
                    self.ruleConditionType = dict["RuleConditionType"] as! String
                }
                if dict.keys.contains("RuleConditionValue") {
                    self.ruleConditionValue = dict["RuleConditionValue"] as! String
                }
            }
        }
        public var forwardingRuleName: String?

        public var priority: Int32?

        public var ruleActions: [CreateForwardingRulesRequest.ForwardingRules.RuleActions]?

        public var ruleConditions: [CreateForwardingRulesRequest.ForwardingRules.RuleConditions]?

        public var ruleDirection: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.forwardingRuleName != nil {
                map["ForwardingRuleName"] = self.forwardingRuleName!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.ruleActions != nil {
                var tmp : [Any] = []
                for k in self.ruleActions! {
                    tmp.append(k.toMap())
                }
                map["RuleActions"] = tmp
            }
            if self.ruleConditions != nil {
                var tmp : [Any] = []
                for k in self.ruleConditions! {
                    tmp.append(k.toMap())
                }
                map["RuleConditions"] = tmp
            }
            if self.ruleDirection != nil {
                map["RuleDirection"] = self.ruleDirection!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ForwardingRuleName") {
                self.forwardingRuleName = dict["ForwardingRuleName"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RuleActions") {
                self.ruleActions = dict["RuleActions"] as! [CreateForwardingRulesRequest.ForwardingRules.RuleActions]
            }
            if dict.keys.contains("RuleConditions") {
                self.ruleConditions = dict["RuleConditions"] as! [CreateForwardingRulesRequest.ForwardingRules.RuleConditions]
            }
            if dict.keys.contains("RuleDirection") {
                self.ruleDirection = dict["RuleDirection"] as! String
            }
        }
    }
    public var acceleratorId: String?

    public var clientToken: String?

    public var forwardingRules: [CreateForwardingRulesRequest.ForwardingRules]?

    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.forwardingRules != nil {
            var tmp : [Any] = []
            for k in self.forwardingRules! {
                tmp.append(k.toMap())
            }
            map["ForwardingRules"] = tmp
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ForwardingRules") {
            self.forwardingRules = dict["ForwardingRules"] as! [CreateForwardingRulesRequest.ForwardingRules]
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateForwardingRulesResponseBody : Tea.TeaModel {
    public class ForwardingRules : Tea.TeaModel {
        public var forwardingRuleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.forwardingRuleId != nil {
                map["ForwardingRuleId"] = self.forwardingRuleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ForwardingRuleId") {
                self.forwardingRuleId = dict["ForwardingRuleId"] as! String
            }
        }
    }
    public var forwardingRules: [CreateForwardingRulesResponseBody.ForwardingRules]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forwardingRules != nil {
            var tmp : [Any] = []
            for k in self.forwardingRules! {
                tmp.append(k.toMap())
            }
            map["ForwardingRules"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ForwardingRules") {
            self.forwardingRules = dict["ForwardingRules"] as! [CreateForwardingRulesResponseBody.ForwardingRules]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateForwardingRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateForwardingRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateForwardingRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateIpSetsRequest : Tea.TeaModel {
    public class AccelerateRegion : Tea.TeaModel {
        public var accelerateRegionId: String?

        public var bandwidth: Int32?

        public var ipVersion: String?

        public var ispType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accelerateRegionId != nil {
                map["AccelerateRegionId"] = self.accelerateRegionId!
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.ipVersion != nil {
                map["IpVersion"] = self.ipVersion!
            }
            if self.ispType != nil {
                map["IspType"] = self.ispType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccelerateRegionId") {
                self.accelerateRegionId = dict["AccelerateRegionId"] as! String
            }
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("IpVersion") {
                self.ipVersion = dict["IpVersion"] as! String
            }
            if dict.keys.contains("IspType") {
                self.ispType = dict["IspType"] as! String
            }
        }
    }
    public var accelerateRegion: [CreateIpSetsRequest.AccelerateRegion]?

    public var acceleratorId: String?

    public var clientToken: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateRegion != nil {
            var tmp : [Any] = []
            for k in self.accelerateRegion! {
                tmp.append(k.toMap())
            }
            map["AccelerateRegion"] = tmp
        }
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateRegion") {
            self.accelerateRegion = dict["AccelerateRegion"] as! [CreateIpSetsRequest.AccelerateRegion]
        }
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateIpSetsResponseBody : Tea.TeaModel {
    public class IpSets : Tea.TeaModel {
        public var accelerateRegionId: String?

        public var bandwidth: Int32?

        public var ipSetId: String?

        public var ispType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accelerateRegionId != nil {
                map["AccelerateRegionId"] = self.accelerateRegionId!
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.ipSetId != nil {
                map["IpSetId"] = self.ipSetId!
            }
            if self.ispType != nil {
                map["IspType"] = self.ispType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccelerateRegionId") {
                self.accelerateRegionId = dict["AccelerateRegionId"] as! String
            }
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("IpSetId") {
                self.ipSetId = dict["IpSetId"] as! String
            }
            if dict.keys.contains("IspType") {
                self.ispType = dict["IspType"] as! String
            }
        }
    }
    public var acceleratorId: String?

    public var ipSets: [CreateIpSetsResponseBody.IpSets]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.ipSets != nil {
            var tmp : [Any] = []
            for k in self.ipSets! {
                tmp.append(k.toMap())
            }
            map["IpSets"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("IpSets") {
            self.ipSets = dict["IpSets"] as! [CreateIpSetsResponseBody.IpSets]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateIpSetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIpSetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateIpSetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateListenerRequest : Tea.TeaModel {
    public class Certificates : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public class CustomRoutingEndpointGroupConfigurations : Tea.TeaModel {
        public class DestinationConfigurations : Tea.TeaModel {
            public var fromPort: Int32?

            public var protocols: [String]?

            public var toPort: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fromPort != nil {
                    map["FromPort"] = self.fromPort!
                }
                if self.protocols != nil {
                    map["Protocols"] = self.protocols!
                }
                if self.toPort != nil {
                    map["ToPort"] = self.toPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FromPort") {
                    self.fromPort = dict["FromPort"] as! Int32
                }
                if dict.keys.contains("Protocols") {
                    self.protocols = dict["Protocols"] as! [String]
                }
                if dict.keys.contains("ToPort") {
                    self.toPort = dict["ToPort"] as! Int32
                }
            }
        }
        public class EndpointConfigurations : Tea.TeaModel {
            public class PolicyConfigurations : Tea.TeaModel {
                public class PortRanges : Tea.TeaModel {
                    public var fromPort: Int32?

                    public var toPort: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.fromPort != nil {
                            map["FromPort"] = self.fromPort!
                        }
                        if self.toPort != nil {
                            map["ToPort"] = self.toPort!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("FromPort") {
                            self.fromPort = dict["FromPort"] as! Int32
                        }
                        if dict.keys.contains("ToPort") {
                            self.toPort = dict["ToPort"] as! Int32
                        }
                    }
                }
                public var address: String?

                public var portRanges: [CreateListenerRequest.CustomRoutingEndpointGroupConfigurations.EndpointConfigurations.PolicyConfigurations.PortRanges]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.address != nil {
                        map["Address"] = self.address!
                    }
                    if self.portRanges != nil {
                        var tmp : [Any] = []
                        for k in self.portRanges! {
                            tmp.append(k.toMap())
                        }
                        map["PortRanges"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Address") {
                        self.address = dict["Address"] as! String
                    }
                    if dict.keys.contains("PortRanges") {
                        self.portRanges = dict["PortRanges"] as! [CreateListenerRequest.CustomRoutingEndpointGroupConfigurations.EndpointConfigurations.PolicyConfigurations.PortRanges]
                    }
                }
            }
            public var endpoint: String?

            public var policyConfigurations: [CreateListenerRequest.CustomRoutingEndpointGroupConfigurations.EndpointConfigurations.PolicyConfigurations]?

            public var trafficToEndpointPolicy: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.policyConfigurations != nil {
                    var tmp : [Any] = []
                    for k in self.policyConfigurations! {
                        tmp.append(k.toMap())
                    }
                    map["PolicyConfigurations"] = tmp
                }
                if self.trafficToEndpointPolicy != nil {
                    map["TrafficToEndpointPolicy"] = self.trafficToEndpointPolicy!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Endpoint") {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("PolicyConfigurations") {
                    self.policyConfigurations = dict["PolicyConfigurations"] as! [CreateListenerRequest.CustomRoutingEndpointGroupConfigurations.EndpointConfigurations.PolicyConfigurations]
                }
                if dict.keys.contains("TrafficToEndpointPolicy") {
                    self.trafficToEndpointPolicy = dict["TrafficToEndpointPolicy"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var description_: String?

        public var destinationConfigurations: [CreateListenerRequest.CustomRoutingEndpointGroupConfigurations.DestinationConfigurations]?

        public var endpointConfigurations: [CreateListenerRequest.CustomRoutingEndpointGroupConfigurations.EndpointConfigurations]?

        public var endpointGroupRegion: String?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destinationConfigurations != nil {
                var tmp : [Any] = []
                for k in self.destinationConfigurations! {
                    tmp.append(k.toMap())
                }
                map["DestinationConfigurations"] = tmp
            }
            if self.endpointConfigurations != nil {
                var tmp : [Any] = []
                for k in self.endpointConfigurations! {
                    tmp.append(k.toMap())
                }
                map["EndpointConfigurations"] = tmp
            }
            if self.endpointGroupRegion != nil {
                map["EndpointGroupRegion"] = self.endpointGroupRegion!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestinationConfigurations") {
                self.destinationConfigurations = dict["DestinationConfigurations"] as! [CreateListenerRequest.CustomRoutingEndpointGroupConfigurations.DestinationConfigurations]
            }
            if dict.keys.contains("EndpointConfigurations") {
                self.endpointConfigurations = dict["EndpointConfigurations"] as! [CreateListenerRequest.CustomRoutingEndpointGroupConfigurations.EndpointConfigurations]
            }
            if dict.keys.contains("EndpointGroupRegion") {
                self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public class EndpointGroupConfigurations : Tea.TeaModel {
        public class EndpointConfigurations : Tea.TeaModel {
            public var endpoint: String?

            public var type: String?

            public var weight: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Endpoint") {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int64
                }
            }
        }
        public class PortOverrides : Tea.TeaModel {
            public var endpointPort: Int64?

            public var listenerPort: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpointPort != nil {
                    map["EndpointPort"] = self.endpointPort!
                }
                if self.listenerPort != nil {
                    map["ListenerPort"] = self.listenerPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndpointPort") {
                    self.endpointPort = dict["EndpointPort"] as! Int64
                }
                if dict.keys.contains("ListenerPort") {
                    self.listenerPort = dict["ListenerPort"] as! Int64
                }
            }
        }
        public var enableClientIPPreservationProxyProtocol: Bool?

        public var enableClientIPPreservationToa: Bool?

        public var endpointConfigurations: [CreateListenerRequest.EndpointGroupConfigurations.EndpointConfigurations]?

        public var endpointGroupDescription: String?

        public var endpointGroupName: String?

        public var endpointGroupRegion: String?

        public var endpointGroupType: String?

        public var endpointRequestProtocol: String?

        public var healthCheckEnabled: Bool?

        public var healthCheckIntervalSeconds: Int64?

        public var healthCheckPath: String?

        public var healthCheckPort: Int64?

        public var healthCheckProtocol: String?

        public var portOverrides: [CreateListenerRequest.EndpointGroupConfigurations.PortOverrides]?

        public var thresholdCount: Int64?

        public var trafficPercentage: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableClientIPPreservationProxyProtocol != nil {
                map["EnableClientIPPreservationProxyProtocol"] = self.enableClientIPPreservationProxyProtocol!
            }
            if self.enableClientIPPreservationToa != nil {
                map["EnableClientIPPreservationToa"] = self.enableClientIPPreservationToa!
            }
            if self.endpointConfigurations != nil {
                var tmp : [Any] = []
                for k in self.endpointConfigurations! {
                    tmp.append(k.toMap())
                }
                map["EndpointConfigurations"] = tmp
            }
            if self.endpointGroupDescription != nil {
                map["EndpointGroupDescription"] = self.endpointGroupDescription!
            }
            if self.endpointGroupName != nil {
                map["EndpointGroupName"] = self.endpointGroupName!
            }
            if self.endpointGroupRegion != nil {
                map["EndpointGroupRegion"] = self.endpointGroupRegion!
            }
            if self.endpointGroupType != nil {
                map["EndpointGroupType"] = self.endpointGroupType!
            }
            if self.endpointRequestProtocol != nil {
                map["EndpointRequestProtocol"] = self.endpointRequestProtocol!
            }
            if self.healthCheckEnabled != nil {
                map["HealthCheckEnabled"] = self.healthCheckEnabled!
            }
            if self.healthCheckIntervalSeconds != nil {
                map["HealthCheckIntervalSeconds"] = self.healthCheckIntervalSeconds!
            }
            if self.healthCheckPath != nil {
                map["HealthCheckPath"] = self.healthCheckPath!
            }
            if self.healthCheckPort != nil {
                map["HealthCheckPort"] = self.healthCheckPort!
            }
            if self.healthCheckProtocol != nil {
                map["HealthCheckProtocol"] = self.healthCheckProtocol!
            }
            if self.portOverrides != nil {
                var tmp : [Any] = []
                for k in self.portOverrides! {
                    tmp.append(k.toMap())
                }
                map["PortOverrides"] = tmp
            }
            if self.thresholdCount != nil {
                map["ThresholdCount"] = self.thresholdCount!
            }
            if self.trafficPercentage != nil {
                map["TrafficPercentage"] = self.trafficPercentage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableClientIPPreservationProxyProtocol") {
                self.enableClientIPPreservationProxyProtocol = dict["EnableClientIPPreservationProxyProtocol"] as! Bool
            }
            if dict.keys.contains("EnableClientIPPreservationToa") {
                self.enableClientIPPreservationToa = dict["EnableClientIPPreservationToa"] as! Bool
            }
            if dict.keys.contains("EndpointConfigurations") {
                self.endpointConfigurations = dict["EndpointConfigurations"] as! [CreateListenerRequest.EndpointGroupConfigurations.EndpointConfigurations]
            }
            if dict.keys.contains("EndpointGroupDescription") {
                self.endpointGroupDescription = dict["EndpointGroupDescription"] as! String
            }
            if dict.keys.contains("EndpointGroupName") {
                self.endpointGroupName = dict["EndpointGroupName"] as! String
            }
            if dict.keys.contains("EndpointGroupRegion") {
                self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
            }
            if dict.keys.contains("EndpointGroupType") {
                self.endpointGroupType = dict["EndpointGroupType"] as! String
            }
            if dict.keys.contains("EndpointRequestProtocol") {
                self.endpointRequestProtocol = dict["EndpointRequestProtocol"] as! String
            }
            if dict.keys.contains("HealthCheckEnabled") {
                self.healthCheckEnabled = dict["HealthCheckEnabled"] as! Bool
            }
            if dict.keys.contains("HealthCheckIntervalSeconds") {
                self.healthCheckIntervalSeconds = dict["HealthCheckIntervalSeconds"] as! Int64
            }
            if dict.keys.contains("HealthCheckPath") {
                self.healthCheckPath = dict["HealthCheckPath"] as! String
            }
            if dict.keys.contains("HealthCheckPort") {
                self.healthCheckPort = dict["HealthCheckPort"] as! Int64
            }
            if dict.keys.contains("HealthCheckProtocol") {
                self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
            }
            if dict.keys.contains("PortOverrides") {
                self.portOverrides = dict["PortOverrides"] as! [CreateListenerRequest.EndpointGroupConfigurations.PortOverrides]
            }
            if dict.keys.contains("ThresholdCount") {
                self.thresholdCount = dict["ThresholdCount"] as! Int64
            }
            if dict.keys.contains("TrafficPercentage") {
                self.trafficPercentage = dict["TrafficPercentage"] as! Int64
            }
        }
    }
    public class PortRanges : Tea.TeaModel {
        public var fromPort: Int32?

        public var toPort: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fromPort != nil {
                map["FromPort"] = self.fromPort!
            }
            if self.toPort != nil {
                map["ToPort"] = self.toPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FromPort") {
                self.fromPort = dict["FromPort"] as! Int32
            }
            if dict.keys.contains("ToPort") {
                self.toPort = dict["ToPort"] as! Int32
            }
        }
    }
    public class XForwardedForConfig : Tea.TeaModel {
        public var XForwardedForGaApEnabled: Bool?

        public var XForwardedForGaIdEnabled: Bool?

        public var XForwardedForPortEnabled: Bool?

        public var XForwardedForProtoEnabled: Bool?

        public var XRealIpEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.XForwardedForGaApEnabled != nil {
                map["XForwardedForGaApEnabled"] = self.XForwardedForGaApEnabled!
            }
            if self.XForwardedForGaIdEnabled != nil {
                map["XForwardedForGaIdEnabled"] = self.XForwardedForGaIdEnabled!
            }
            if self.XForwardedForPortEnabled != nil {
                map["XForwardedForPortEnabled"] = self.XForwardedForPortEnabled!
            }
            if self.XForwardedForProtoEnabled != nil {
                map["XForwardedForProtoEnabled"] = self.XForwardedForProtoEnabled!
            }
            if self.XRealIpEnabled != nil {
                map["XRealIpEnabled"] = self.XRealIpEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("XForwardedForGaApEnabled") {
                self.XForwardedForGaApEnabled = dict["XForwardedForGaApEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForGaIdEnabled") {
                self.XForwardedForGaIdEnabled = dict["XForwardedForGaIdEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForPortEnabled") {
                self.XForwardedForPortEnabled = dict["XForwardedForPortEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForProtoEnabled") {
                self.XForwardedForProtoEnabled = dict["XForwardedForProtoEnabled"] as! Bool
            }
            if dict.keys.contains("XRealIpEnabled") {
                self.XRealIpEnabled = dict["XRealIpEnabled"] as! Bool
            }
        }
    }
    public var acceleratorId: String?

    public var certificates: [CreateListenerRequest.Certificates]?

    public var clientAffinity: String?

    public var clientToken: String?

    public var customRoutingEndpointGroupConfigurations: [CreateListenerRequest.CustomRoutingEndpointGroupConfigurations]?

    public var description_: String?

    public var endpointGroupConfigurations: [CreateListenerRequest.EndpointGroupConfigurations]?

    public var name: String?

    public var portRanges: [CreateListenerRequest.PortRanges]?

    public var protocol_: String?

    public var proxyProtocol: Bool?

    public var regionId: String?

    public var securityPolicyId: String?

    public var type: String?

    public var XForwardedForConfig: CreateListenerRequest.XForwardedForConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.XForwardedForConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.certificates != nil {
            var tmp : [Any] = []
            for k in self.certificates! {
                tmp.append(k.toMap())
            }
            map["Certificates"] = tmp
        }
        if self.clientAffinity != nil {
            map["ClientAffinity"] = self.clientAffinity!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.customRoutingEndpointGroupConfigurations != nil {
            var tmp : [Any] = []
            for k in self.customRoutingEndpointGroupConfigurations! {
                tmp.append(k.toMap())
            }
            map["CustomRoutingEndpointGroupConfigurations"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endpointGroupConfigurations != nil {
            var tmp : [Any] = []
            for k in self.endpointGroupConfigurations! {
                tmp.append(k.toMap())
            }
            map["EndpointGroupConfigurations"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.portRanges != nil {
            var tmp : [Any] = []
            for k in self.portRanges! {
                tmp.append(k.toMap())
            }
            map["PortRanges"] = tmp
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.proxyProtocol != nil {
            map["ProxyProtocol"] = self.proxyProtocol!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.XForwardedForConfig != nil {
            map["XForwardedForConfig"] = self.XForwardedForConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("Certificates") {
            self.certificates = dict["Certificates"] as! [CreateListenerRequest.Certificates]
        }
        if dict.keys.contains("ClientAffinity") {
            self.clientAffinity = dict["ClientAffinity"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CustomRoutingEndpointGroupConfigurations") {
            self.customRoutingEndpointGroupConfigurations = dict["CustomRoutingEndpointGroupConfigurations"] as! [CreateListenerRequest.CustomRoutingEndpointGroupConfigurations]
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndpointGroupConfigurations") {
            self.endpointGroupConfigurations = dict["EndpointGroupConfigurations"] as! [CreateListenerRequest.EndpointGroupConfigurations]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PortRanges") {
            self.portRanges = dict["PortRanges"] as! [CreateListenerRequest.PortRanges]
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("ProxyProtocol") {
            self.proxyProtocol = dict["ProxyProtocol"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityPolicyId") {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("XForwardedForConfig") {
            var model = CreateListenerRequest.XForwardedForConfig()
            model.fromMap(dict["XForwardedForConfig"] as! [String: Any])
            self.XForwardedForConfig = model
        }
    }
}

public class CreateListenerResponseBody : Tea.TeaModel {
    public var listenerId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSpareIpsRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var spareIps: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.spareIps != nil {
            map["SpareIps"] = self.spareIps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SpareIps") {
            self.spareIps = dict["SpareIps"] as! [String]
        }
    }
}

public class CreateSpareIpsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateSpareIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSpareIpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSpareIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAcceleratorRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteAcceleratorResponseBody : Tea.TeaModel {
    public var acceleratorId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAcceleratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAcceleratorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAcceleratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAclRequest : Tea.TeaModel {
    public var aclId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteAclResponseBody : Tea.TeaModel {
    public var aclId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApplicationMonitorRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeleteApplicationMonitorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteApplicationMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationMonitorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteApplicationMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBandwidthPackageRequest : Tea.TeaModel {
    public var bandwidthPackageId: String?

    public var clientToken: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteBandwidthPackageResponseBody : Tea.TeaModel {
    public var bandwidthPackageId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteBandwidthPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBandwidthPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteBandwidthPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBasicAccelerateIpRequest : Tea.TeaModel {
    public var accelerateIpId: String?

    public var clientToken: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateIpId != nil {
            map["AccelerateIpId"] = self.accelerateIpId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateIpId") {
            self.accelerateIpId = dict["AccelerateIpId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteBasicAccelerateIpResponseBody : Tea.TeaModel {
    public var accelerateIpId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateIpId != nil {
            map["AccelerateIpId"] = self.accelerateIpId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateIpId") {
            self.accelerateIpId = dict["AccelerateIpId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteBasicAccelerateIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBasicAccelerateIpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteBasicAccelerateIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBasicAccelerateIpEndpointRelationRequest : Tea.TeaModel {
    public var accelerateIpId: String?

    public var acceleratorId: String?

    public var clientToken: String?

    public var endpointId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateIpId != nil {
            map["AccelerateIpId"] = self.accelerateIpId!
        }
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateIpId") {
            self.accelerateIpId = dict["AccelerateIpId"] as! String
        }
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteBasicAccelerateIpEndpointRelationResponseBody : Tea.TeaModel {
    public var accelerateIpId: String?

    public var acceleratorId: String?

    public var endpointId: String?

    public var requestId: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateIpId != nil {
            map["AccelerateIpId"] = self.accelerateIpId!
        }
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateIpId") {
            self.accelerateIpId = dict["AccelerateIpId"] as! String
        }
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class DeleteBasicAccelerateIpEndpointRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBasicAccelerateIpEndpointRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteBasicAccelerateIpEndpointRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBasicAcceleratorRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteBasicAcceleratorResponseBody : Tea.TeaModel {
    public var acceleratorId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteBasicAcceleratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBasicAcceleratorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteBasicAcceleratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBasicEndpointRequest : Tea.TeaModel {
    public var clientToken: String?

    public var endpointGroupId: String?

    public var endpointId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteBasicEndpointResponseBody : Tea.TeaModel {
    public var endpointId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteBasicEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBasicEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteBasicEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBasicEndpointGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var endpointGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
    }
}

public class DeleteBasicEndpointGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteBasicEndpointGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBasicEndpointGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteBasicEndpointGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBasicIpSetRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ipSetId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ipSetId != nil {
            map["IpSetId"] = self.ipSetId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("IpSetId") {
            self.ipSetId = dict["IpSetId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteBasicIpSetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteBasicIpSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBasicIpSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteBasicIpSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomRoutingEndpointGroupDestinationsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var destinationIds: [String]?

    public var dryRun: Bool?

    public var endpointGroupId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.destinationIds != nil {
            map["DestinationIds"] = self.destinationIds!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DestinationIds") {
            self.destinationIds = dict["DestinationIds"] as! [String]
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteCustomRoutingEndpointGroupDestinationsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteCustomRoutingEndpointGroupDestinationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomRoutingEndpointGroupDestinationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteCustomRoutingEndpointGroupDestinationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomRoutingEndpointGroupsRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointGroupIds: [String]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointGroupIds != nil {
            map["EndpointGroupIds"] = self.endpointGroupIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointGroupIds") {
            self.endpointGroupIds = dict["EndpointGroupIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteCustomRoutingEndpointGroupsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteCustomRoutingEndpointGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomRoutingEndpointGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteCustomRoutingEndpointGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomRoutingEndpointTrafficPoliciesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var endpointId: String?

    public var policyIds: [String]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("PolicyIds") {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteCustomRoutingEndpointTrafficPoliciesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteCustomRoutingEndpointTrafficPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomRoutingEndpointTrafficPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteCustomRoutingEndpointTrafficPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomRoutingEndpointsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var endpointGroupId: String?

    public var endpointIds: [String]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.endpointIds != nil {
            map["EndpointIds"] = self.endpointIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("EndpointIds") {
            self.endpointIds = dict["EndpointIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteCustomRoutingEndpointsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteCustomRoutingEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomRoutingEndpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteCustomRoutingEndpointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEndpointGroupRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var endpointGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
    }
}

public class DeleteEndpointGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteEndpointGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEndpointGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteEndpointGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEndpointGroupsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointGroupIds: [String]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointGroupIds != nil {
            map["EndpointGroupIds"] = self.endpointGroupIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointGroupIds") {
            self.endpointGroupIds = dict["EndpointGroupIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteEndpointGroupsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteEndpointGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEndpointGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteEndpointGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteForwardingRulesRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var forwardingRuleIds: [String]?

    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.forwardingRuleIds != nil {
            map["ForwardingRuleIds"] = self.forwardingRuleIds!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ForwardingRuleIds") {
            self.forwardingRuleIds = dict["ForwardingRuleIds"] as! [String]
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteForwardingRulesResponseBody : Tea.TeaModel {
    public class ForwardingRules : Tea.TeaModel {
        public var forwardingRuleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.forwardingRuleId != nil {
                map["ForwardingRuleId"] = self.forwardingRuleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ForwardingRuleId") {
                self.forwardingRuleId = dict["ForwardingRuleId"] as! String
            }
        }
    }
    public var forwardingRules: [DeleteForwardingRulesResponseBody.ForwardingRules]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forwardingRules != nil {
            var tmp : [Any] = []
            for k in self.forwardingRules! {
                tmp.append(k.toMap())
            }
            map["ForwardingRules"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ForwardingRules") {
            self.forwardingRules = dict["ForwardingRules"] as! [DeleteForwardingRulesResponseBody.ForwardingRules]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteForwardingRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteForwardingRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteForwardingRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIpSetRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var ipSetId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ipSetId != nil {
            map["IpSetId"] = self.ipSetId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("IpSetId") {
            self.ipSetId = dict["IpSetId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteIpSetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteIpSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIpSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteIpSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIpSetsRequest : Tea.TeaModel {
    public var ipSetIds: [String]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipSetIds != nil {
            map["IpSetIds"] = self.ipSetIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpSetIds") {
            self.ipSetIds = dict["IpSetIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteIpSetsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteIpSetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIpSetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteIpSetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteListenerRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var listenerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
    }
}

public class DeleteListenerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSpareIpsRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var spareIps: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.spareIps != nil {
            map["SpareIps"] = self.spareIps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SpareIps") {
            self.spareIps = dict["SpareIps"] as! [String]
        }
    }
}

public class DeleteSpareIpsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteSpareIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSpareIpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteSpareIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAcceleratorRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAcceleratorResponseBody : Tea.TeaModel {
    public class BasicBandwidthPackage : Tea.TeaModel {
        public var bandwidth: Int32?

        public var bandwidthType: String?

        public var instanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.bandwidthType != nil {
                map["BandwidthType"] = self.bandwidthType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("BandwidthType") {
                self.bandwidthType = dict["BandwidthType"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
        }
    }
    public class CrossDomainBandwidthPackage : Tea.TeaModel {
        public var bandwidth: Int32?

        public var instanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
        }
    }
    public class IpSetConfig : Tea.TeaModel {
        public var accessMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessMode != nil {
                map["AccessMode"] = self.accessMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessMode") {
                self.accessMode = dict["AccessMode"] as! String
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var acceleratorId: String?

    public var bandwidthBillingType: String?

    public var basicBandwidthPackage: DescribeAcceleratorResponseBody.BasicBandwidthPackage?

    public var cenId: String?

    public var createTime: Int64?

    public var crossDomainBandwidthPackage: DescribeAcceleratorResponseBody.CrossDomainBandwidthPackage?

    public var crossPrivateState: String?

    public var ddosId: String?

    public var description_: String?

    public var dnsName: String?

    public var expiredTime: Int64?

    public var instanceChargeType: String?

    public var ipSetConfig: DescribeAcceleratorResponseBody.IpSetConfig?

    public var name: String?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var secondDnsName: String?

    public var spec: String?

    public var state: String?

    public var tags: [DescribeAcceleratorResponseBody.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.basicBandwidthPackage?.validate()
        try self.crossDomainBandwidthPackage?.validate()
        try self.ipSetConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.bandwidthBillingType != nil {
            map["BandwidthBillingType"] = self.bandwidthBillingType!
        }
        if self.basicBandwidthPackage != nil {
            map["BasicBandwidthPackage"] = self.basicBandwidthPackage?.toMap()
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.crossDomainBandwidthPackage != nil {
            map["CrossDomainBandwidthPackage"] = self.crossDomainBandwidthPackage?.toMap()
        }
        if self.crossPrivateState != nil {
            map["CrossPrivateState"] = self.crossPrivateState!
        }
        if self.ddosId != nil {
            map["DdosId"] = self.ddosId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dnsName != nil {
            map["DnsName"] = self.dnsName!
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.instanceChargeType != nil {
            map["InstanceChargeType"] = self.instanceChargeType!
        }
        if self.ipSetConfig != nil {
            map["IpSetConfig"] = self.ipSetConfig?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.secondDnsName != nil {
            map["SecondDnsName"] = self.secondDnsName!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("BandwidthBillingType") {
            self.bandwidthBillingType = dict["BandwidthBillingType"] as! String
        }
        if dict.keys.contains("BasicBandwidthPackage") {
            var model = DescribeAcceleratorResponseBody.BasicBandwidthPackage()
            model.fromMap(dict["BasicBandwidthPackage"] as! [String: Any])
            self.basicBandwidthPackage = model
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("CrossDomainBandwidthPackage") {
            var model = DescribeAcceleratorResponseBody.CrossDomainBandwidthPackage()
            model.fromMap(dict["CrossDomainBandwidthPackage"] as! [String: Any])
            self.crossDomainBandwidthPackage = model
        }
        if dict.keys.contains("CrossPrivateState") {
            self.crossPrivateState = dict["CrossPrivateState"] as! String
        }
        if dict.keys.contains("DdosId") {
            self.ddosId = dict["DdosId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DnsName") {
            self.dnsName = dict["DnsName"] as! String
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! Int64
        }
        if dict.keys.contains("InstanceChargeType") {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("IpSetConfig") {
            var model = DescribeAcceleratorResponseBody.IpSetConfig()
            model.fromMap(dict["IpSetConfig"] as! [String: Any])
            self.ipSetConfig = model
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecondDnsName") {
            self.secondDnsName = dict["SecondDnsName"] as! String
        }
        if dict.keys.contains("Spec") {
            self.spec = dict["Spec"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [DescribeAcceleratorResponseBody.Tags]
        }
    }
}

public class DescribeAcceleratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAcceleratorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAcceleratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAcceleratorAutoRenewAttributeRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAcceleratorAutoRenewAttributeResponseBody : Tea.TeaModel {
    public var acceleratorId: String?

    public var autoRenew: Bool?

    public var autoRenewDuration: Int32?

    public var renewalStatus: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.renewalStatus != nil {
            map["RenewalStatus"] = self.renewalStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("RenewalStatus") {
            self.renewalStatus = dict["RenewalStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAcceleratorAutoRenewAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAcceleratorAutoRenewAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAcceleratorAutoRenewAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApplicationMonitorRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DescribeApplicationMonitorResponseBody : Tea.TeaModel {
    public class IspCityList : Tea.TeaModel {
        public var city: String?

        public var cityName: String?

        public var isp: String?

        public var ispName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.cityName != nil {
                map["CityName"] = self.cityName!
            }
            if self.isp != nil {
                map["Isp"] = self.isp!
            }
            if self.ispName != nil {
                map["IspName"] = self.ispName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("CityName") {
                self.cityName = dict["CityName"] as! String
            }
            if dict.keys.contains("Isp") {
                self.isp = dict["Isp"] as! String
            }
            if dict.keys.contains("IspName") {
                self.ispName = dict["IspName"] as! String
            }
        }
    }
    public var acceleratorId: String?

    public var address: String?

    public var detectEnable: Bool?

    public var detectThreshold: Int32?

    public var detectTimes: Int32?

    public var ispCityList: [DescribeApplicationMonitorResponseBody.IspCityList]?

    public var listenerId: String?

    public var optionsJson: String?

    public var regionId: String?

    public var requestId: String?

    public var silenceTime: Int32?

    public var taskId: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.detectEnable != nil {
            map["DetectEnable"] = self.detectEnable!
        }
        if self.detectThreshold != nil {
            map["DetectThreshold"] = self.detectThreshold!
        }
        if self.detectTimes != nil {
            map["DetectTimes"] = self.detectTimes!
        }
        if self.ispCityList != nil {
            var tmp : [Any] = []
            for k in self.ispCityList! {
                tmp.append(k.toMap())
            }
            map["IspCityList"] = tmp
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.optionsJson != nil {
            map["OptionsJson"] = self.optionsJson!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.silenceTime != nil {
            map["SilenceTime"] = self.silenceTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("DetectEnable") {
            self.detectEnable = dict["DetectEnable"] as! Bool
        }
        if dict.keys.contains("DetectThreshold") {
            self.detectThreshold = dict["DetectThreshold"] as! Int32
        }
        if dict.keys.contains("DetectTimes") {
            self.detectTimes = dict["DetectTimes"] as! Int32
        }
        if dict.keys.contains("IspCityList") {
            self.ispCityList = dict["IspCityList"] as! [DescribeApplicationMonitorResponseBody.IspCityList]
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("OptionsJson") {
            self.optionsJson = dict["OptionsJson"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SilenceTime") {
            self.silenceTime = dict["SilenceTime"] as! Int32
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class DescribeApplicationMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicationMonitorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeApplicationMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBandwidthPackageRequest : Tea.TeaModel {
    public var bandwidthPackageId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeBandwidthPackageResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var accelerators: [String]?

    public var bandwidth: Int32?

    public var bandwidthPackageId: String?

    public var bandwidthType: String?

    public var billingType: String?

    public var cbnGeographicRegionIdA: String?

    public var cbnGeographicRegionIdB: String?

    public var chargeType: String?

    public var createTime: String?

    public var description_: String?

    public var expiredTime: String?

    public var name: String?

    public var ratio: Int32?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var state: String?

    public var tags: [DescribeBandwidthPackageResponseBody.Tags]?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerators != nil {
            map["Accelerators"] = self.accelerators!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.bandwidthType != nil {
            map["BandwidthType"] = self.bandwidthType!
        }
        if self.billingType != nil {
            map["BillingType"] = self.billingType!
        }
        if self.cbnGeographicRegionIdA != nil {
            map["CbnGeographicRegionIdA"] = self.cbnGeographicRegionIdA!
        }
        if self.cbnGeographicRegionIdB != nil {
            map["CbnGeographicRegionIdB"] = self.cbnGeographicRegionIdB!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ratio != nil {
            map["Ratio"] = self.ratio!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accelerators") {
            self.accelerators = dict["Accelerators"] as! [String]
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("BandwidthType") {
            self.bandwidthType = dict["BandwidthType"] as! String
        }
        if dict.keys.contains("BillingType") {
            self.billingType = dict["BillingType"] as! String
        }
        if dict.keys.contains("CbnGeographicRegionIdA") {
            self.cbnGeographicRegionIdA = dict["CbnGeographicRegionIdA"] as! String
        }
        if dict.keys.contains("CbnGeographicRegionIdB") {
            self.cbnGeographicRegionIdB = dict["CbnGeographicRegionIdB"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Ratio") {
            self.ratio = dict["Ratio"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [DescribeBandwidthPackageResponseBody.Tags]
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeBandwidthPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBandwidthPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeBandwidthPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBandwidthPackageAutoRenewAttributeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeBandwidthPackageAutoRenewAttributeResponseBody : Tea.TeaModel {
    public var autoRenew: Bool?

    public var autoRenewDuration: Int32?

    public var instanceId: String?

    public var renewalStatus: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.renewalStatus != nil {
            map["RenewalStatus"] = self.renewalStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RenewalStatus") {
            self.renewalStatus = dict["RenewalStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeBandwidthPackageAutoRenewAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBandwidthPackageAutoRenewAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeBandwidthPackageAutoRenewAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCustomRoutingEndPointTrafficPolicyRequest : Tea.TeaModel {
    public var policyId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCustomRoutingEndPointTrafficPolicyResponseBody : Tea.TeaModel {
    public class PortRanges : Tea.TeaModel {
        public var fromPort: Int32?

        public var toPort: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fromPort != nil {
                map["FromPort"] = self.fromPort!
            }
            if self.toPort != nil {
                map["ToPort"] = self.toPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FromPort") {
                self.fromPort = dict["FromPort"] as! Int32
            }
            if dict.keys.contains("ToPort") {
                self.toPort = dict["ToPort"] as! Int32
            }
        }
    }
    public var acceleratorId: String?

    public var address: String?

    public var endpoint: String?

    public var endpointGroupId: String?

    public var endpointId: String?

    public var listenerId: String?

    public var policyId: String?

    public var portRanges: [DescribeCustomRoutingEndPointTrafficPolicyResponseBody.PortRanges]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.portRanges != nil {
            var tmp : [Any] = []
            for k in self.portRanges! {
                tmp.append(k.toMap())
            }
            map["PortRanges"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("PortRanges") {
            self.portRanges = dict["PortRanges"] as! [DescribeCustomRoutingEndPointTrafficPolicyResponseBody.PortRanges]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCustomRoutingEndPointTrafficPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomRoutingEndPointTrafficPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCustomRoutingEndPointTrafficPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCustomRoutingEndpointRequest : Tea.TeaModel {
    public var endpointId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCustomRoutingEndpointResponseBody : Tea.TeaModel {
    public var acceleratorId: String?

    public var endpoint: String?

    public var endpointGroupId: String?

    public var endpointId: String?

    public var listenerId: String?

    public var requestId: String?

    public var trafficToEndpointPolicy: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trafficToEndpointPolicy != nil {
            map["TrafficToEndpointPolicy"] = self.trafficToEndpointPolicy!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrafficToEndpointPolicy") {
            self.trafficToEndpointPolicy = dict["TrafficToEndpointPolicy"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeCustomRoutingEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomRoutingEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCustomRoutingEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCustomRoutingEndpointGroupRequest : Tea.TeaModel {
    public var endpointGroupId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCustomRoutingEndpointGroupResponseBody : Tea.TeaModel {
    public var acceleratorId: String?

    public var accessLogSwitch: String?

    public var description_: String?

    public var enableAccessLog: Bool?

    public var endpointGroupId: String?

    public var endpointGroupIpList: [String]?

    public var endpointGroupRegion: String?

    public var endpointGroupUnconfirmedIpList: [String]?

    public var listenerId: String?

    public var name: String?

    public var requestId: String?

    public var slsLogStoreName: String?

    public var slsProjectName: String?

    public var slsRegion: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.accessLogSwitch != nil {
            map["AccessLogSwitch"] = self.accessLogSwitch!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableAccessLog != nil {
            map["EnableAccessLog"] = self.enableAccessLog!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.endpointGroupIpList != nil {
            map["EndpointGroupIpList"] = self.endpointGroupIpList!
        }
        if self.endpointGroupRegion != nil {
            map["EndpointGroupRegion"] = self.endpointGroupRegion!
        }
        if self.endpointGroupUnconfirmedIpList != nil {
            map["EndpointGroupUnconfirmedIpList"] = self.endpointGroupUnconfirmedIpList!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slsLogStoreName != nil {
            map["SlsLogStoreName"] = self.slsLogStoreName!
        }
        if self.slsProjectName != nil {
            map["SlsProjectName"] = self.slsProjectName!
        }
        if self.slsRegion != nil {
            map["SlsRegion"] = self.slsRegion!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("AccessLogSwitch") {
            self.accessLogSwitch = dict["AccessLogSwitch"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnableAccessLog") {
            self.enableAccessLog = dict["EnableAccessLog"] as! Bool
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("EndpointGroupIpList") {
            self.endpointGroupIpList = dict["EndpointGroupIpList"] as! [String]
        }
        if dict.keys.contains("EndpointGroupRegion") {
            self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
        }
        if dict.keys.contains("EndpointGroupUnconfirmedIpList") {
            self.endpointGroupUnconfirmedIpList = dict["EndpointGroupUnconfirmedIpList"] as! [String]
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlsLogStoreName") {
            self.slsLogStoreName = dict["SlsLogStoreName"] as! String
        }
        if dict.keys.contains("SlsProjectName") {
            self.slsProjectName = dict["SlsProjectName"] as! String
        }
        if dict.keys.contains("SlsRegion") {
            self.slsRegion = dict["SlsRegion"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class DescribeCustomRoutingEndpointGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomRoutingEndpointGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCustomRoutingEndpointGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCustomRoutingEndpointGroupDestinationsRequest : Tea.TeaModel {
    public var destinationId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationId != nil {
            map["DestinationId"] = self.destinationId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestinationId") {
            self.destinationId = dict["DestinationId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCustomRoutingEndpointGroupDestinationsResponseBody : Tea.TeaModel {
    public var acceleratorId: String?

    public var destinationId: String?

    public var endpointGroupId: String?

    public var fromPort: Int32?

    public var listenerId: String?

    public var protocols: [String]?

    public var requestId: String?

    public var toPort: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.destinationId != nil {
            map["DestinationId"] = self.destinationId!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.fromPort != nil {
            map["FromPort"] = self.fromPort!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.protocols != nil {
            map["Protocols"] = self.protocols!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.toPort != nil {
            map["ToPort"] = self.toPort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("DestinationId") {
            self.destinationId = dict["DestinationId"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("FromPort") {
            self.fromPort = dict["FromPort"] as! Int32
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("Protocols") {
            self.protocols = dict["Protocols"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ToPort") {
            self.toPort = dict["ToPort"] as! Int32
        }
    }
}

public class DescribeCustomRoutingEndpointGroupDestinationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomRoutingEndpointGroupDestinationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCustomRoutingEndpointGroupDestinationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEndpointGroupRequest : Tea.TeaModel {
    public var endpointGroupId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeEndpointGroupResponseBody : Tea.TeaModel {
    public class EndpointConfigurations : Tea.TeaModel {
        public var enableClientIPPreservation: Bool?

        public var endpoint: String?

        public var probePort: Int32?

        public var probeProtocol: String?

        public var type: String?

        public var weight: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableClientIPPreservation != nil {
                map["EnableClientIPPreservation"] = self.enableClientIPPreservation!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.probePort != nil {
                map["ProbePort"] = self.probePort!
            }
            if self.probeProtocol != nil {
                map["ProbeProtocol"] = self.probeProtocol!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableClientIPPreservation") {
                self.enableClientIPPreservation = dict["EnableClientIPPreservation"] as! Bool
            }
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("ProbePort") {
                self.probePort = dict["ProbePort"] as! Int32
            }
            if dict.keys.contains("ProbeProtocol") {
                self.probeProtocol = dict["ProbeProtocol"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Weight") {
                self.weight = dict["Weight"] as! Int32
            }
        }
    }
    public class PortOverrides : Tea.TeaModel {
        public var endpointPort: Int32?

        public var listenerPort: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointPort != nil {
                map["EndpointPort"] = self.endpointPort!
            }
            if self.listenerPort != nil {
                map["ListenerPort"] = self.listenerPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndpointPort") {
                self.endpointPort = dict["EndpointPort"] as! Int32
            }
            if dict.keys.contains("ListenerPort") {
                self.listenerPort = dict["ListenerPort"] as! Int32
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var acceleratorId: String?

    public var accessLogSwitch: String?

    public var description_: String?

    public var enableAccessLog: Bool?

    public var endpointConfigurations: [DescribeEndpointGroupResponseBody.EndpointConfigurations]?

    public var endpointGroupId: String?

    public var endpointGroupIpList: [String]?

    public var endpointGroupRegion: String?

    public var endpointGroupType: String?

    public var endpointGroupUnconfirmedIpList: [String]?

    public var endpointRequestProtocol: String?

    public var forwardingRuleIds: [String]?

    public var healthCheckEnabled: Bool?

    public var healthCheckIntervalSeconds: Int32?

    public var healthCheckPath: String?

    public var healthCheckPort: Int32?

    public var healthCheckProtocol: String?

    public var listenerId: String?

    public var name: String?

    public var portOverrides: [DescribeEndpointGroupResponseBody.PortOverrides]?

    public var requestId: String?

    public var slsLogStoreName: String?

    public var slsProjectName: String?

    public var slsRegion: String?

    public var state: String?

    public var tags: [DescribeEndpointGroupResponseBody.Tags]?

    public var thresholdCount: Int32?

    public var totalCount: Int32?

    public var trafficPercentage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.accessLogSwitch != nil {
            map["AccessLogSwitch"] = self.accessLogSwitch!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableAccessLog != nil {
            map["EnableAccessLog"] = self.enableAccessLog!
        }
        if self.endpointConfigurations != nil {
            var tmp : [Any] = []
            for k in self.endpointConfigurations! {
                tmp.append(k.toMap())
            }
            map["EndpointConfigurations"] = tmp
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.endpointGroupIpList != nil {
            map["EndpointGroupIpList"] = self.endpointGroupIpList!
        }
        if self.endpointGroupRegion != nil {
            map["EndpointGroupRegion"] = self.endpointGroupRegion!
        }
        if self.endpointGroupType != nil {
            map["EndpointGroupType"] = self.endpointGroupType!
        }
        if self.endpointGroupUnconfirmedIpList != nil {
            map["EndpointGroupUnconfirmedIpList"] = self.endpointGroupUnconfirmedIpList!
        }
        if self.endpointRequestProtocol != nil {
            map["EndpointRequestProtocol"] = self.endpointRequestProtocol!
        }
        if self.forwardingRuleIds != nil {
            map["ForwardingRuleIds"] = self.forwardingRuleIds!
        }
        if self.healthCheckEnabled != nil {
            map["HealthCheckEnabled"] = self.healthCheckEnabled!
        }
        if self.healthCheckIntervalSeconds != nil {
            map["HealthCheckIntervalSeconds"] = self.healthCheckIntervalSeconds!
        }
        if self.healthCheckPath != nil {
            map["HealthCheckPath"] = self.healthCheckPath!
        }
        if self.healthCheckPort != nil {
            map["HealthCheckPort"] = self.healthCheckPort!
        }
        if self.healthCheckProtocol != nil {
            map["HealthCheckProtocol"] = self.healthCheckProtocol!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.portOverrides != nil {
            var tmp : [Any] = []
            for k in self.portOverrides! {
                tmp.append(k.toMap())
            }
            map["PortOverrides"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slsLogStoreName != nil {
            map["SlsLogStoreName"] = self.slsLogStoreName!
        }
        if self.slsProjectName != nil {
            map["SlsProjectName"] = self.slsProjectName!
        }
        if self.slsRegion != nil {
            map["SlsRegion"] = self.slsRegion!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.thresholdCount != nil {
            map["ThresholdCount"] = self.thresholdCount!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.trafficPercentage != nil {
            map["TrafficPercentage"] = self.trafficPercentage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("AccessLogSwitch") {
            self.accessLogSwitch = dict["AccessLogSwitch"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnableAccessLog") {
            self.enableAccessLog = dict["EnableAccessLog"] as! Bool
        }
        if dict.keys.contains("EndpointConfigurations") {
            self.endpointConfigurations = dict["EndpointConfigurations"] as! [DescribeEndpointGroupResponseBody.EndpointConfigurations]
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("EndpointGroupIpList") {
            self.endpointGroupIpList = dict["EndpointGroupIpList"] as! [String]
        }
        if dict.keys.contains("EndpointGroupRegion") {
            self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
        }
        if dict.keys.contains("EndpointGroupType") {
            self.endpointGroupType = dict["EndpointGroupType"] as! String
        }
        if dict.keys.contains("EndpointGroupUnconfirmedIpList") {
            self.endpointGroupUnconfirmedIpList = dict["EndpointGroupUnconfirmedIpList"] as! [String]
        }
        if dict.keys.contains("EndpointRequestProtocol") {
            self.endpointRequestProtocol = dict["EndpointRequestProtocol"] as! String
        }
        if dict.keys.contains("ForwardingRuleIds") {
            self.forwardingRuleIds = dict["ForwardingRuleIds"] as! [String]
        }
        if dict.keys.contains("HealthCheckEnabled") {
            self.healthCheckEnabled = dict["HealthCheckEnabled"] as! Bool
        }
        if dict.keys.contains("HealthCheckIntervalSeconds") {
            self.healthCheckIntervalSeconds = dict["HealthCheckIntervalSeconds"] as! Int32
        }
        if dict.keys.contains("HealthCheckPath") {
            self.healthCheckPath = dict["HealthCheckPath"] as! String
        }
        if dict.keys.contains("HealthCheckPort") {
            self.healthCheckPort = dict["HealthCheckPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckProtocol") {
            self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PortOverrides") {
            self.portOverrides = dict["PortOverrides"] as! [DescribeEndpointGroupResponseBody.PortOverrides]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlsLogStoreName") {
            self.slsLogStoreName = dict["SlsLogStoreName"] as! String
        }
        if dict.keys.contains("SlsProjectName") {
            self.slsProjectName = dict["SlsProjectName"] as! String
        }
        if dict.keys.contains("SlsRegion") {
            self.slsRegion = dict["SlsRegion"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [DescribeEndpointGroupResponseBody.Tags]
        }
        if dict.keys.contains("ThresholdCount") {
            self.thresholdCount = dict["ThresholdCount"] as! Int32
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TrafficPercentage") {
            self.trafficPercentage = dict["TrafficPercentage"] as! Int32
        }
    }
}

public class DescribeEndpointGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEndpointGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeEndpointGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeIpSetRequest : Tea.TeaModel {
    public var ipSetId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipSetId != nil {
            map["IpSetId"] = self.ipSetId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpSetId") {
            self.ipSetId = dict["IpSetId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeIpSetResponseBody : Tea.TeaModel {
    public var accelerateRegionId: String?

    public var acceleratorId: String?

    public var bandwidth: Int32?

    public var ipAddressList: [String]?

    public var ipSetId: String?

    public var ipVersion: String?

    public var ispType: String?

    public var requestId: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateRegionId != nil {
            map["AccelerateRegionId"] = self.accelerateRegionId!
        }
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.ipAddressList != nil {
            map["IpAddressList"] = self.ipAddressList!
        }
        if self.ipSetId != nil {
            map["IpSetId"] = self.ipSetId!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.ispType != nil {
            map["IspType"] = self.ispType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateRegionId") {
            self.accelerateRegionId = dict["AccelerateRegionId"] as! String
        }
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("IpAddressList") {
            self.ipAddressList = dict["IpAddressList"] as! [String]
        }
        if dict.keys.contains("IpSetId") {
            self.ipSetId = dict["IpSetId"] as! String
        }
        if dict.keys.contains("IpVersion") {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("IspType") {
            self.ispType = dict["IspType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class DescribeIpSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIpSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeIpSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeListenerRequest : Tea.TeaModel {
    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeListenerResponseBody : Tea.TeaModel {
    public class BackendPorts : Tea.TeaModel {
        public var fromPort: String?

        public var toPort: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fromPort != nil {
                map["FromPort"] = self.fromPort!
            }
            if self.toPort != nil {
                map["ToPort"] = self.toPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FromPort") {
                self.fromPort = dict["FromPort"] as! String
            }
            if dict.keys.contains("ToPort") {
                self.toPort = dict["ToPort"] as! String
            }
        }
    }
    public class Certificates : Tea.TeaModel {
        public var id: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class PortRanges : Tea.TeaModel {
        public var fromPort: Int32?

        public var toPort: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fromPort != nil {
                map["FromPort"] = self.fromPort!
            }
            if self.toPort != nil {
                map["ToPort"] = self.toPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FromPort") {
                self.fromPort = dict["FromPort"] as! Int32
            }
            if dict.keys.contains("ToPort") {
                self.toPort = dict["ToPort"] as! Int32
            }
        }
    }
    public class RelatedAcls : Tea.TeaModel {
        public var aclId: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclId != nil {
                map["AclId"] = self.aclId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclId") {
                self.aclId = dict["AclId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class XForwardedForConfig : Tea.TeaModel {
        public var XForwardedForGaApEnabled: Bool?

        public var XForwardedForGaIdEnabled: Bool?

        public var XForwardedForPortEnabled: Bool?

        public var XForwardedForProtoEnabled: Bool?

        public var XRealIpEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.XForwardedForGaApEnabled != nil {
                map["XForwardedForGaApEnabled"] = self.XForwardedForGaApEnabled!
            }
            if self.XForwardedForGaIdEnabled != nil {
                map["XForwardedForGaIdEnabled"] = self.XForwardedForGaIdEnabled!
            }
            if self.XForwardedForPortEnabled != nil {
                map["XForwardedForPortEnabled"] = self.XForwardedForPortEnabled!
            }
            if self.XForwardedForProtoEnabled != nil {
                map["XForwardedForProtoEnabled"] = self.XForwardedForProtoEnabled!
            }
            if self.XRealIpEnabled != nil {
                map["XRealIpEnabled"] = self.XRealIpEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("XForwardedForGaApEnabled") {
                self.XForwardedForGaApEnabled = dict["XForwardedForGaApEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForGaIdEnabled") {
                self.XForwardedForGaIdEnabled = dict["XForwardedForGaIdEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForPortEnabled") {
                self.XForwardedForPortEnabled = dict["XForwardedForPortEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForProtoEnabled") {
                self.XForwardedForProtoEnabled = dict["XForwardedForProtoEnabled"] as! Bool
            }
            if dict.keys.contains("XRealIpEnabled") {
                self.XRealIpEnabled = dict["XRealIpEnabled"] as! Bool
            }
        }
    }
    public var acceleratorId: String?

    public var aclType: String?

    public var backendPorts: [DescribeListenerResponseBody.BackendPorts]?

    public var certificates: [DescribeListenerResponseBody.Certificates]?

    public var clientAffinity: String?

    public var createTime: String?

    public var description_: String?

    public var listenerId: String?

    public var name: String?

    public var portRanges: [DescribeListenerResponseBody.PortRanges]?

    public var protocol_: String?

    public var proxyProtocol: Bool?

    public var relatedAcls: [DescribeListenerResponseBody.RelatedAcls]?

    public var requestId: String?

    public var securityPolicyId: String?

    public var state: String?

    public var type: String?

    public var XForwardedForConfig: DescribeListenerResponseBody.XForwardedForConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.XForwardedForConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.backendPorts != nil {
            var tmp : [Any] = []
            for k in self.backendPorts! {
                tmp.append(k.toMap())
            }
            map["BackendPorts"] = tmp
        }
        if self.certificates != nil {
            var tmp : [Any] = []
            for k in self.certificates! {
                tmp.append(k.toMap())
            }
            map["Certificates"] = tmp
        }
        if self.clientAffinity != nil {
            map["ClientAffinity"] = self.clientAffinity!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.portRanges != nil {
            var tmp : [Any] = []
            for k in self.portRanges! {
                tmp.append(k.toMap())
            }
            map["PortRanges"] = tmp
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.proxyProtocol != nil {
            map["ProxyProtocol"] = self.proxyProtocol!
        }
        if self.relatedAcls != nil {
            var tmp : [Any] = []
            for k in self.relatedAcls! {
                tmp.append(k.toMap())
            }
            map["RelatedAcls"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.XForwardedForConfig != nil {
            map["XForwardedForConfig"] = self.XForwardedForConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("BackendPorts") {
            self.backendPorts = dict["BackendPorts"] as! [DescribeListenerResponseBody.BackendPorts]
        }
        if dict.keys.contains("Certificates") {
            self.certificates = dict["Certificates"] as! [DescribeListenerResponseBody.Certificates]
        }
        if dict.keys.contains("ClientAffinity") {
            self.clientAffinity = dict["ClientAffinity"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PortRanges") {
            self.portRanges = dict["PortRanges"] as! [DescribeListenerResponseBody.PortRanges]
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("ProxyProtocol") {
            self.proxyProtocol = dict["ProxyProtocol"] as! Bool
        }
        if dict.keys.contains("RelatedAcls") {
            self.relatedAcls = dict["RelatedAcls"] as! [DescribeListenerResponseBody.RelatedAcls]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityPolicyId") {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("XForwardedForConfig") {
            var model = DescribeListenerResponseBody.XForwardedForConfig()
            model.fromMap(dict["XForwardedForConfig"] as! [String: Any])
            self.XForwardedForConfig = model
        }
    }
}

public class DescribeListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var regionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! [DescribeRegionsResponseBody.Regions]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachDdosFromAcceleratorRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DetachDdosFromAcceleratorResponseBody : Tea.TeaModel {
    public var ddosId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ddosId != nil {
            map["DdosId"] = self.ddosId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DdosId") {
            self.ddosId = dict["DdosId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetachDdosFromAcceleratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachDdosFromAcceleratorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DetachDdosFromAcceleratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachLogStoreFromEndpointGroupRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var endpointGroupIds: [String]?

    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointGroupIds != nil {
            map["EndpointGroupIds"] = self.endpointGroupIds!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointGroupIds") {
            self.endpointGroupIds = dict["EndpointGroupIds"] as! [String]
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DetachLogStoreFromEndpointGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetachLogStoreFromEndpointGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachLogStoreFromEndpointGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DetachLogStoreFromEndpointGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectApplicationMonitorRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DetectApplicationMonitorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetectApplicationMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectApplicationMonitorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DetectApplicationMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableApplicationMonitorRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DisableApplicationMonitorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DisableApplicationMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableApplicationMonitorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisableApplicationMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DissociateAclsFromListenerRequest : Tea.TeaModel {
    public var aclIds: [String]?

    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclIds != nil {
            map["AclIds"] = self.aclIds!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclIds") {
            self.aclIds = dict["AclIds"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DissociateAclsFromListenerResponseBody : Tea.TeaModel {
    public var aclIds: [String]?

    public var listenerId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclIds != nil {
            map["AclIds"] = self.aclIds!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclIds") {
            self.aclIds = dict["AclIds"] as! [String]
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DissociateAclsFromListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DissociateAclsFromListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DissociateAclsFromListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DissociateAdditionalCertificatesFromListenerRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var domains: [String]?

    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Domains") {
            self.domains = dict["Domains"] as! [String]
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DissociateAdditionalCertificatesFromListenerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DissociateAdditionalCertificatesFromListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DissociateAdditionalCertificatesFromListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DissociateAdditionalCertificatesFromListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableApplicationMonitorRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class EnableApplicationMonitorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EnableApplicationMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableApplicationMonitorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableApplicationMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAclRequest : Tea.TeaModel {
    public var aclId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetAclResponseBody : Tea.TeaModel {
    public class AclEntries : Tea.TeaModel {
        public var entry: String?

        public var entryDescription: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entry != nil {
                map["Entry"] = self.entry!
            }
            if self.entryDescription != nil {
                map["EntryDescription"] = self.entryDescription!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Entry") {
                self.entry = dict["Entry"] as! String
            }
            if dict.keys.contains("EntryDescription") {
                self.entryDescription = dict["EntryDescription"] as! String
            }
        }
    }
    public class RelatedListeners : Tea.TeaModel {
        public var acceleratorId: String?

        public var aclType: String?

        public var listenerId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorId != nil {
                map["AcceleratorId"] = self.acceleratorId!
            }
            if self.aclType != nil {
                map["AclType"] = self.aclType!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorId") {
                self.acceleratorId = dict["AcceleratorId"] as! String
            }
            if dict.keys.contains("AclType") {
                self.aclType = dict["AclType"] as! String
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var aclEntries: [GetAclResponseBody.AclEntries]?

    public var aclId: String?

    public var aclName: String?

    public var aclStatus: String?

    public var addressIPVersion: String?

    public var relatedListeners: [GetAclResponseBody.RelatedListeners]?

    public var requestId: String?

    public var resourceGroupId: String?

    public var tags: [GetAclResponseBody.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclEntries != nil {
            var tmp : [Any] = []
            for k in self.aclEntries! {
                tmp.append(k.toMap())
            }
            map["AclEntries"] = tmp
        }
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclName != nil {
            map["AclName"] = self.aclName!
        }
        if self.aclStatus != nil {
            map["AclStatus"] = self.aclStatus!
        }
        if self.addressIPVersion != nil {
            map["AddressIPVersion"] = self.addressIPVersion!
        }
        if self.relatedListeners != nil {
            var tmp : [Any] = []
            for k in self.relatedListeners! {
                tmp.append(k.toMap())
            }
            map["RelatedListeners"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclEntries") {
            self.aclEntries = dict["AclEntries"] as! [GetAclResponseBody.AclEntries]
        }
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclName") {
            self.aclName = dict["AclName"] as! String
        }
        if dict.keys.contains("AclStatus") {
            self.aclStatus = dict["AclStatus"] as! String
        }
        if dict.keys.contains("AddressIPVersion") {
            self.addressIPVersion = dict["AddressIPVersion"] as! String
        }
        if dict.keys.contains("RelatedListeners") {
            self.relatedListeners = dict["RelatedListeners"] as! [GetAclResponseBody.RelatedListeners]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [GetAclResponseBody.Tags]
        }
    }
}

public class GetAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBasicAccelerateIpRequest : Tea.TeaModel {
    public var accelerateIpId: String?

    public var clientToken: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateIpId != nil {
            map["AccelerateIpId"] = self.accelerateIpId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateIpId") {
            self.accelerateIpId = dict["AccelerateIpId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetBasicAccelerateIpResponseBody : Tea.TeaModel {
    public var accelerateIpAddress: String?

    public var accelerateIpId: String?

    public var acceleratorId: String?

    public var ipSetId: String?

    public var requestId: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateIpAddress != nil {
            map["AccelerateIpAddress"] = self.accelerateIpAddress!
        }
        if self.accelerateIpId != nil {
            map["AccelerateIpId"] = self.accelerateIpId!
        }
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.ipSetId != nil {
            map["IpSetId"] = self.ipSetId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateIpAddress") {
            self.accelerateIpAddress = dict["AccelerateIpAddress"] as! String
        }
        if dict.keys.contains("AccelerateIpId") {
            self.accelerateIpId = dict["AccelerateIpId"] as! String
        }
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("IpSetId") {
            self.ipSetId = dict["IpSetId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class GetBasicAccelerateIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBasicAccelerateIpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetBasicAccelerateIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBasicAcceleratorRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetBasicAcceleratorResponseBody : Tea.TeaModel {
    public class BasicBandwidthPackage : Tea.TeaModel {
        public var bandwidth: Int32?

        public var bandwidthType: String?

        public var instanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.bandwidthType != nil {
                map["BandwidthType"] = self.bandwidthType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("BandwidthType") {
                self.bandwidthType = dict["BandwidthType"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
        }
    }
    public class CrossDomainBandwidthPackage : Tea.TeaModel {
        public var bandwidth: Int32?

        public var instanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var acceleratorId: String?

    public var bandwidthBillingType: String?

    public var basicBandwidthPackage: GetBasicAcceleratorResponseBody.BasicBandwidthPackage?

    public var basicEndpointGroupId: String?

    public var basicIpSetId: String?

    public var cenId: String?

    public var createTime: Int64?

    public var crossDomainBandwidthPackage: GetBasicAcceleratorResponseBody.CrossDomainBandwidthPackage?

    public var crossPrivateState: String?

    public var description_: String?

    public var expiredTime: Int64?

    public var instanceChargeType: String?

    public var name: String?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var state: String?

    public var tags: [GetBasicAcceleratorResponseBody.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.basicBandwidthPackage?.validate()
        try self.crossDomainBandwidthPackage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.bandwidthBillingType != nil {
            map["BandwidthBillingType"] = self.bandwidthBillingType!
        }
        if self.basicBandwidthPackage != nil {
            map["BasicBandwidthPackage"] = self.basicBandwidthPackage?.toMap()
        }
        if self.basicEndpointGroupId != nil {
            map["BasicEndpointGroupId"] = self.basicEndpointGroupId!
        }
        if self.basicIpSetId != nil {
            map["BasicIpSetId"] = self.basicIpSetId!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.crossDomainBandwidthPackage != nil {
            map["CrossDomainBandwidthPackage"] = self.crossDomainBandwidthPackage?.toMap()
        }
        if self.crossPrivateState != nil {
            map["CrossPrivateState"] = self.crossPrivateState!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.instanceChargeType != nil {
            map["InstanceChargeType"] = self.instanceChargeType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("BandwidthBillingType") {
            self.bandwidthBillingType = dict["BandwidthBillingType"] as! String
        }
        if dict.keys.contains("BasicBandwidthPackage") {
            var model = GetBasicAcceleratorResponseBody.BasicBandwidthPackage()
            model.fromMap(dict["BasicBandwidthPackage"] as! [String: Any])
            self.basicBandwidthPackage = model
        }
        if dict.keys.contains("BasicEndpointGroupId") {
            self.basicEndpointGroupId = dict["BasicEndpointGroupId"] as! String
        }
        if dict.keys.contains("BasicIpSetId") {
            self.basicIpSetId = dict["BasicIpSetId"] as! String
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("CrossDomainBandwidthPackage") {
            var model = GetBasicAcceleratorResponseBody.CrossDomainBandwidthPackage()
            model.fromMap(dict["CrossDomainBandwidthPackage"] as! [String: Any])
            self.crossDomainBandwidthPackage = model
        }
        if dict.keys.contains("CrossPrivateState") {
            self.crossPrivateState = dict["CrossPrivateState"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! Int64
        }
        if dict.keys.contains("InstanceChargeType") {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [GetBasicAcceleratorResponseBody.Tags]
        }
    }
}

public class GetBasicAcceleratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBasicAcceleratorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetBasicAcceleratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBasicEndpointGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var endpointGroupId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetBasicEndpointGroupResponseBody : Tea.TeaModel {
    public var acceleratorId: String?

    public var description_: String?

    public var endpointAddress: String?

    public var endpointGroupId: String?

    public var endpointGroupRegion: String?

    public var endpointSubAddress: String?

    public var endpointType: String?

    public var name: String?

    public var requestId: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endpointAddress != nil {
            map["EndpointAddress"] = self.endpointAddress!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.endpointGroupRegion != nil {
            map["EndpointGroupRegion"] = self.endpointGroupRegion!
        }
        if self.endpointSubAddress != nil {
            map["EndpointSubAddress"] = self.endpointSubAddress!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndpointAddress") {
            self.endpointAddress = dict["EndpointAddress"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("EndpointGroupRegion") {
            self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
        }
        if dict.keys.contains("EndpointSubAddress") {
            self.endpointSubAddress = dict["EndpointSubAddress"] as! String
        }
        if dict.keys.contains("EndpointType") {
            self.endpointType = dict["EndpointType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class GetBasicEndpointGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBasicEndpointGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetBasicEndpointGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBasicIpSetRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ipSetId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ipSetId != nil {
            map["IpSetId"] = self.ipSetId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("IpSetId") {
            self.ipSetId = dict["IpSetId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetBasicIpSetResponseBody : Tea.TeaModel {
    public var accelerateRegionId: String?

    public var acceleratorId: String?

    public var bandwidth: Int64?

    public var ipAddress: String?

    public var ipSetId: String?

    public var ipVersion: String?

    public var ispType: String?

    public var requestId: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerateRegionId != nil {
            map["AccelerateRegionId"] = self.accelerateRegionId!
        }
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.ipAddress != nil {
            map["IpAddress"] = self.ipAddress!
        }
        if self.ipSetId != nil {
            map["IpSetId"] = self.ipSetId!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.ispType != nil {
            map["IspType"] = self.ispType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccelerateRegionId") {
            self.accelerateRegionId = dict["AccelerateRegionId"] as! String
        }
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int64
        }
        if dict.keys.contains("IpAddress") {
            self.ipAddress = dict["IpAddress"] as! String
        }
        if dict.keys.contains("IpSetId") {
            self.ipSetId = dict["IpSetId"] as! String
        }
        if dict.keys.contains("IpVersion") {
            self.ipVersion = dict["IpVersion"] as! String
        }
        if dict.keys.contains("IspType") {
            self.ispType = dict["IspType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class GetBasicIpSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBasicIpSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetBasicIpSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHealthStatusRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetHealthStatusResponseBody : Tea.TeaModel {
    public class EndpointGroups : Tea.TeaModel {
        public class Endpoints : Tea.TeaModel {
            public var address: String?

            public var endpointId: String?

            public var healthDetail: String?

            public var healthStatus: String?

            public var port: Int64?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.healthDetail != nil {
                    map["HealthDetail"] = self.healthDetail!
                }
                if self.healthStatus != nil {
                    map["HealthStatus"] = self.healthStatus!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("EndpointId") {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("HealthDetail") {
                    self.healthDetail = dict["HealthDetail"] as! String
                }
                if dict.keys.contains("HealthStatus") {
                    self.healthStatus = dict["HealthStatus"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int64
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var endpointGroupId: String?

        public var endpointGroupType: String?

        public var endpoints: [GetHealthStatusResponseBody.EndpointGroups.Endpoints]?

        public var forwardingRuleIds: [String]?

        public var healthStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointGroupId != nil {
                map["EndpointGroupId"] = self.endpointGroupId!
            }
            if self.endpointGroupType != nil {
                map["EndpointGroupType"] = self.endpointGroupType!
            }
            if self.endpoints != nil {
                var tmp : [Any] = []
                for k in self.endpoints! {
                    tmp.append(k.toMap())
                }
                map["Endpoints"] = tmp
            }
            if self.forwardingRuleIds != nil {
                map["ForwardingRuleIds"] = self.forwardingRuleIds!
            }
            if self.healthStatus != nil {
                map["HealthStatus"] = self.healthStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndpointGroupId") {
                self.endpointGroupId = dict["EndpointGroupId"] as! String
            }
            if dict.keys.contains("EndpointGroupType") {
                self.endpointGroupType = dict["EndpointGroupType"] as! String
            }
            if dict.keys.contains("Endpoints") {
                self.endpoints = dict["Endpoints"] as! [GetHealthStatusResponseBody.EndpointGroups.Endpoints]
            }
            if dict.keys.contains("ForwardingRuleIds") {
                self.forwardingRuleIds = dict["ForwardingRuleIds"] as! [String]
            }
            if dict.keys.contains("HealthStatus") {
                self.healthStatus = dict["HealthStatus"] as! String
            }
        }
    }
    public var endpointGroups: [GetHealthStatusResponseBody.EndpointGroups]?

    public var healthStatus: String?

    public var listenerId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointGroups != nil {
            var tmp : [Any] = []
            for k in self.endpointGroups! {
                tmp.append(k.toMap())
            }
            map["EndpointGroups"] = tmp
        }
        if self.healthStatus != nil {
            map["HealthStatus"] = self.healthStatus!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointGroups") {
            self.endpointGroups = dict["EndpointGroups"] as! [GetHealthStatusResponseBody.EndpointGroups]
        }
        if dict.keys.contains("HealthStatus") {
            self.healthStatus = dict["HealthStatus"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetHealthStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHealthStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetHealthStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSpareIpRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var spareIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.spareIp != nil {
            map["SpareIp"] = self.spareIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SpareIp") {
            self.spareIp = dict["SpareIp"] as! String
        }
    }
}

public class GetSpareIpResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class GetSpareIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSpareIpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSpareIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccelerateAreasRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListAccelerateAreasResponseBody : Tea.TeaModel {
    public class Areas : Tea.TeaModel {
        public class RegionList : Tea.TeaModel {
            public var localName: String?

            public var regionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var areaId: String?

        public var localName: String?

        public var regionList: [ListAccelerateAreasResponseBody.Areas.RegionList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.areaId != nil {
                map["AreaId"] = self.areaId!
            }
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionList != nil {
                var tmp : [Any] = []
                for k in self.regionList! {
                    tmp.append(k.toMap())
                }
                map["RegionList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AreaId") {
                self.areaId = dict["AreaId"] as! String
            }
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionList") {
                self.regionList = dict["RegionList"] as! [ListAccelerateAreasResponseBody.Areas.RegionList]
            }
        }
    }
    public var areas: [ListAccelerateAreasResponseBody.Areas]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.areas != nil {
            var tmp : [Any] = []
            for k in self.areas! {
                tmp.append(k.toMap())
            }
            map["Areas"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Areas") {
            self.areas = dict["Areas"] as! [ListAccelerateAreasResponseBody.Areas]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAccelerateAreasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccelerateAreasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAccelerateAreasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAcceleratorsRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var acceleratorId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var state: String?

    public var tag: [ListAcceleratorsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListAcceleratorsRequest.Tag]
        }
    }
}

public class ListAcceleratorsResponseBody : Tea.TeaModel {
    public class Accelerators : Tea.TeaModel {
        public class BasicBandwidthPackage : Tea.TeaModel {
            public var bandwidth: Int32?

            public var bandwidthType: String?

            public var instanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bandwidth != nil {
                    map["Bandwidth"] = self.bandwidth!
                }
                if self.bandwidthType != nil {
                    map["BandwidthType"] = self.bandwidthType!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bandwidth") {
                    self.bandwidth = dict["Bandwidth"] as! Int32
                }
                if dict.keys.contains("BandwidthType") {
                    self.bandwidthType = dict["BandwidthType"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
            }
        }
        public class CrossDomainBandwidthPackage : Tea.TeaModel {
            public var bandwidth: Int32?

            public var instanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bandwidth != nil {
                    map["Bandwidth"] = self.bandwidth!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bandwidth") {
                    self.bandwidth = dict["Bandwidth"] as! Int32
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
            }
        }
        public class IpSetConfig : Tea.TeaModel {
            public var accessMode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessMode != nil {
                    map["AccessMode"] = self.accessMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessMode") {
                    self.accessMode = dict["AccessMode"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var acceleratorId: String?

        public var bandwidth: Int32?

        public var bandwidthBillingType: String?

        public var basicBandwidthPackage: ListAcceleratorsResponseBody.Accelerators.BasicBandwidthPackage?

        public var cenId: String?

        public var createTime: Int64?

        public var crossDomainBandwidthPackage: ListAcceleratorsResponseBody.Accelerators.CrossDomainBandwidthPackage?

        public var ddosId: String?

        public var description_: String?

        public var dnsName: String?

        public var expiredTime: Int64?

        public var instanceChargeType: String?

        public var ipSetConfig: ListAcceleratorsResponseBody.Accelerators.IpSetConfig?

        public var name: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var secondDnsName: String?

        public var spec: String?

        public var state: String?

        public var tags: [ListAcceleratorsResponseBody.Accelerators.Tags]?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.basicBandwidthPackage?.validate()
            try self.crossDomainBandwidthPackage?.validate()
            try self.ipSetConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorId != nil {
                map["AcceleratorId"] = self.acceleratorId!
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.bandwidthBillingType != nil {
                map["BandwidthBillingType"] = self.bandwidthBillingType!
            }
            if self.basicBandwidthPackage != nil {
                map["BasicBandwidthPackage"] = self.basicBandwidthPackage?.toMap()
            }
            if self.cenId != nil {
                map["CenId"] = self.cenId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.crossDomainBandwidthPackage != nil {
                map["CrossDomainBandwidthPackage"] = self.crossDomainBandwidthPackage?.toMap()
            }
            if self.ddosId != nil {
                map["DdosId"] = self.ddosId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.dnsName != nil {
                map["DnsName"] = self.dnsName!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.instanceChargeType != nil {
                map["InstanceChargeType"] = self.instanceChargeType!
            }
            if self.ipSetConfig != nil {
                map["IpSetConfig"] = self.ipSetConfig?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.secondDnsName != nil {
                map["SecondDnsName"] = self.secondDnsName!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorId") {
                self.acceleratorId = dict["AcceleratorId"] as! String
            }
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("BandwidthBillingType") {
                self.bandwidthBillingType = dict["BandwidthBillingType"] as! String
            }
            if dict.keys.contains("BasicBandwidthPackage") {
                var model = ListAcceleratorsResponseBody.Accelerators.BasicBandwidthPackage()
                model.fromMap(dict["BasicBandwidthPackage"] as! [String: Any])
                self.basicBandwidthPackage = model
            }
            if dict.keys.contains("CenId") {
                self.cenId = dict["CenId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("CrossDomainBandwidthPackage") {
                var model = ListAcceleratorsResponseBody.Accelerators.CrossDomainBandwidthPackage()
                model.fromMap(dict["CrossDomainBandwidthPackage"] as! [String: Any])
                self.crossDomainBandwidthPackage = model
            }
            if dict.keys.contains("DdosId") {
                self.ddosId = dict["DdosId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DnsName") {
                self.dnsName = dict["DnsName"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! Int64
            }
            if dict.keys.contains("InstanceChargeType") {
                self.instanceChargeType = dict["InstanceChargeType"] as! String
            }
            if dict.keys.contains("IpSetConfig") {
                var model = ListAcceleratorsResponseBody.Accelerators.IpSetConfig()
                model.fromMap(dict["IpSetConfig"] as! [String: Any])
                self.ipSetConfig = model
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SecondDnsName") {
                self.secondDnsName = dict["SecondDnsName"] as! String
            }
            if dict.keys.contains("Spec") {
                self.spec = dict["Spec"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [ListAcceleratorsResponseBody.Accelerators.Tags]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var accelerators: [ListAcceleratorsResponseBody.Accelerators]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerators != nil {
            var tmp : [Any] = []
            for k in self.accelerators! {
                tmp.append(k.toMap())
            }
            map["Accelerators"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accelerators") {
            self.accelerators = dict["Accelerators"] as! [ListAcceleratorsResponseBody.Accelerators]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAcceleratorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAcceleratorsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAcceleratorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAclsRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var aclIds: [String]?

    public var aclName: String?

    public var clientToken: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [ListAclsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclIds != nil {
            map["AclIds"] = self.aclIds!
        }
        if self.aclName != nil {
            map["AclName"] = self.aclName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclIds") {
            self.aclIds = dict["AclIds"] as! [String]
        }
        if dict.keys.contains("AclName") {
            self.aclName = dict["AclName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListAclsRequest.Tag]
        }
    }
}

public class ListAclsResponseBody : Tea.TeaModel {
    public class Acls : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var aclId: String?

        public var aclName: String?

        public var aclStatus: String?

        public var addressIPVersion: String?

        public var resourceGroupId: String?

        public var tags: [ListAclsResponseBody.Acls.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclId != nil {
                map["AclId"] = self.aclId!
            }
            if self.aclName != nil {
                map["AclName"] = self.aclName!
            }
            if self.aclStatus != nil {
                map["AclStatus"] = self.aclStatus!
            }
            if self.addressIPVersion != nil {
                map["AddressIPVersion"] = self.addressIPVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclId") {
                self.aclId = dict["AclId"] as! String
            }
            if dict.keys.contains("AclName") {
                self.aclName = dict["AclName"] as! String
            }
            if dict.keys.contains("AclStatus") {
                self.aclStatus = dict["AclStatus"] as! String
            }
            if dict.keys.contains("AddressIPVersion") {
                self.addressIPVersion = dict["AddressIPVersion"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [ListAclsResponseBody.Acls.Tags]
            }
        }
    }
    public var acls: [ListAclsResponseBody.Acls]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acls != nil {
            var tmp : [Any] = []
            for k in self.acls! {
                tmp.append(k.toMap())
            }
            map["Acls"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Acls") {
            self.acls = dict["Acls"] as! [ListAclsResponseBody.Acls]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAclsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAclsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAclsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationMonitorRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var searchValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SearchValue") {
            self.searchValue = dict["SearchValue"] as! String
        }
    }
}

public class ListApplicationMonitorResponseBody : Tea.TeaModel {
    public class ApplicationMonitors : Tea.TeaModel {
        public var acceleratorId: String?

        public var address: String?

        public var detectEnable: Bool?

        public var detectThreshold: Int32?

        public var detectTimes: Int32?

        public var listenerId: String?

        public var optionsJson: String?

        public var silenceTime: Int32?

        public var state: String?

        public var taskId: String?

        public var taskName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorId != nil {
                map["AcceleratorId"] = self.acceleratorId!
            }
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.detectEnable != nil {
                map["DetectEnable"] = self.detectEnable!
            }
            if self.detectThreshold != nil {
                map["DetectThreshold"] = self.detectThreshold!
            }
            if self.detectTimes != nil {
                map["DetectTimes"] = self.detectTimes!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.optionsJson != nil {
                map["OptionsJson"] = self.optionsJson!
            }
            if self.silenceTime != nil {
                map["SilenceTime"] = self.silenceTime!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorId") {
                self.acceleratorId = dict["AcceleratorId"] as! String
            }
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("DetectEnable") {
                self.detectEnable = dict["DetectEnable"] as! Bool
            }
            if dict.keys.contains("DetectThreshold") {
                self.detectThreshold = dict["DetectThreshold"] as! Int32
            }
            if dict.keys.contains("DetectTimes") {
                self.detectTimes = dict["DetectTimes"] as! Int32
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("OptionsJson") {
                self.optionsJson = dict["OptionsJson"] as! String
            }
            if dict.keys.contains("SilenceTime") {
                self.silenceTime = dict["SilenceTime"] as! Int32
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
        }
    }
    public var applicationMonitors: [ListApplicationMonitorResponseBody.ApplicationMonitors]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationMonitors != nil {
            var tmp : [Any] = []
            for k in self.applicationMonitors! {
                tmp.append(k.toMap())
            }
            map["ApplicationMonitors"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationMonitors") {
            self.applicationMonitors = dict["ApplicationMonitors"] as! [ListApplicationMonitorResponseBody.ApplicationMonitors]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListApplicationMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationMonitorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListApplicationMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationMonitorDetectResultRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var endTime: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ListApplicationMonitorDetectResultResponseBody : Tea.TeaModel {
    public class ApplicationMonitorDetectResultList : Tea.TeaModel {
        public var acceleratorId: String?

        public var content: String?

        public var detail: String?

        public var detectTime: String?

        public var diagStatus: String?

        public var listenerId: String?

        public var port: String?

        public var protocol_: String?

        public var statusCode: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorId != nil {
                map["AcceleratorId"] = self.acceleratorId!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.detectTime != nil {
                map["DetectTime"] = self.detectTime!
            }
            if self.diagStatus != nil {
                map["DiagStatus"] = self.diagStatus!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.statusCode != nil {
                map["StatusCode"] = self.statusCode!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorId") {
                self.acceleratorId = dict["AcceleratorId"] as! String
            }
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Detail") {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("DetectTime") {
                self.detectTime = dict["DetectTime"] as! String
            }
            if dict.keys.contains("DiagStatus") {
                self.diagStatus = dict["DiagStatus"] as! String
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! String
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("StatusCode") {
                self.statusCode = dict["StatusCode"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var applicationMonitorDetectResultList: [ListApplicationMonitorDetectResultResponseBody.ApplicationMonitorDetectResultList]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationMonitorDetectResultList != nil {
            var tmp : [Any] = []
            for k in self.applicationMonitorDetectResultList! {
                tmp.append(k.toMap())
            }
            map["ApplicationMonitorDetectResultList"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationMonitorDetectResultList") {
            self.applicationMonitorDetectResultList = dict["ApplicationMonitorDetectResultList"] as! [ListApplicationMonitorDetectResultResponseBody.ApplicationMonitorDetectResultList]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListApplicationMonitorDetectResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationMonitorDetectResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListApplicationMonitorDetectResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAvailableAccelerateAreasRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListAvailableAccelerateAreasResponseBody : Tea.TeaModel {
    public class Areas : Tea.TeaModel {
        public class RegionList : Tea.TeaModel {
            public var localName: String?

            public var regionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var areaId: String?

        public var localName: String?

        public var regionList: [ListAvailableAccelerateAreasResponseBody.Areas.RegionList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.areaId != nil {
                map["AreaId"] = self.areaId!
            }
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionList != nil {
                var tmp : [Any] = []
                for k in self.regionList! {
                    tmp.append(k.toMap())
                }
                map["RegionList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AreaId") {
                self.areaId = dict["AreaId"] as! String
            }
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionList") {
                self.regionList = dict["RegionList"] as! [ListAvailableAccelerateAreasResponseBody.Areas.RegionList]
            }
        }
    }
    public var areas: [ListAvailableAccelerateAreasResponseBody.Areas]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.areas != nil {
            var tmp : [Any] = []
            for k in self.areas! {
                tmp.append(k.toMap())
            }
            map["Areas"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Areas") {
            self.areas = dict["Areas"] as! [ListAvailableAccelerateAreasResponseBody.Areas]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAvailableAccelerateAreasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAvailableAccelerateAreasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAvailableAccelerateAreasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAvailableBusiRegionsRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListAvailableBusiRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var pop: Bool?

        public var regionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.pop != nil {
                map["Pop"] = self.pop!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("Pop") {
                self.pop = dict["Pop"] as! Bool
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var regions: [ListAvailableBusiRegionsResponseBody.Regions]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! [ListAvailableBusiRegionsResponseBody.Regions]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAvailableBusiRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAvailableBusiRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAvailableBusiRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBandwidthPackagesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var bandwidthPackageId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var state: String?

    public var tag: [ListBandwidthPackagesRequest.Tag]?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListBandwidthPackagesRequest.Tag]
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListBandwidthPackagesResponseBody : Tea.TeaModel {
    public class BandwidthPackages : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var accelerators: [String]?

        public var bandwidth: Int32?

        public var bandwidthPackageId: String?

        public var bandwidthType: String?

        public var billingType: String?

        public var cbnGeographicRegionIdA: String?

        public var cbnGeographicRegionIdB: String?

        public var chargeType: String?

        public var createTime: String?

        public var description_: String?

        public var expiredTime: String?

        public var name: String?

        public var ratio: Int32?

        public var regionId: String?

        public var resourceGroupId: String?

        public var state: String?

        public var tags: [ListBandwidthPackagesResponseBody.BandwidthPackages.Tags]?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accelerators != nil {
                map["Accelerators"] = self.accelerators!
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.bandwidthPackageId != nil {
                map["BandwidthPackageId"] = self.bandwidthPackageId!
            }
            if self.bandwidthType != nil {
                map["BandwidthType"] = self.bandwidthType!
            }
            if self.billingType != nil {
                map["BillingType"] = self.billingType!
            }
            if self.cbnGeographicRegionIdA != nil {
                map["CbnGeographicRegionIdA"] = self.cbnGeographicRegionIdA!
            }
            if self.cbnGeographicRegionIdB != nil {
                map["CbnGeographicRegionIdB"] = self.cbnGeographicRegionIdB!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ratio != nil {
                map["Ratio"] = self.ratio!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Accelerators") {
                self.accelerators = dict["Accelerators"] as! [String]
            }
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("BandwidthPackageId") {
                self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
            }
            if dict.keys.contains("BandwidthType") {
                self.bandwidthType = dict["BandwidthType"] as! String
            }
            if dict.keys.contains("BillingType") {
                self.billingType = dict["BillingType"] as! String
            }
            if dict.keys.contains("CbnGeographicRegionIdA") {
                self.cbnGeographicRegionIdA = dict["CbnGeographicRegionIdA"] as! String
            }
            if dict.keys.contains("CbnGeographicRegionIdB") {
                self.cbnGeographicRegionIdB = dict["CbnGeographicRegionIdB"] as! String
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Ratio") {
                self.ratio = dict["Ratio"] as! Int32
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [ListBandwidthPackagesResponseBody.BandwidthPackages.Tags]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var bandwidthPackages: [ListBandwidthPackagesResponseBody.BandwidthPackages]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidthPackages != nil {
            var tmp : [Any] = []
            for k in self.bandwidthPackages! {
                tmp.append(k.toMap())
            }
            map["BandwidthPackages"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BandwidthPackages") {
            self.bandwidthPackages = dict["BandwidthPackages"] as! [ListBandwidthPackagesResponseBody.BandwidthPackages]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListBandwidthPackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBandwidthPackagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListBandwidthPackagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBandwidthackagesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListBandwidthackagesResponseBody : Tea.TeaModel {
    public class BandwidthPackages : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var accelerators: [String]?

        public var bandwidth: Int32?

        public var bandwidthPackageId: String?

        public var chargeType: String?

        public var createTime: String?

        public var description_: String?

        public var expiredTime: String?

        public var name: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var state: String?

        public var tags: [ListBandwidthackagesResponseBody.BandwidthPackages.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accelerators != nil {
                map["Accelerators"] = self.accelerators!
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.bandwidthPackageId != nil {
                map["BandwidthPackageId"] = self.bandwidthPackageId!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Accelerators") {
                self.accelerators = dict["Accelerators"] as! [String]
            }
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("BandwidthPackageId") {
                self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [ListBandwidthackagesResponseBody.BandwidthPackages.Tags]
            }
        }
    }
    public var bandwidthPackages: [ListBandwidthackagesResponseBody.BandwidthPackages]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidthPackages != nil {
            var tmp : [Any] = []
            for k in self.bandwidthPackages! {
                tmp.append(k.toMap())
            }
            map["BandwidthPackages"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BandwidthPackages") {
            self.bandwidthPackages = dict["BandwidthPackages"] as! [ListBandwidthackagesResponseBody.BandwidthPackages]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListBandwidthackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBandwidthackagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListBandwidthackagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBasicAcceleratorsRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var acceleratorId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var state: String?

    public var tag: [ListBasicAcceleratorsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListBasicAcceleratorsRequest.Tag]
        }
    }
}

public class ListBasicAcceleratorsResponseBody : Tea.TeaModel {
    public class Accelerators : Tea.TeaModel {
        public class BasicBandwidthPackage : Tea.TeaModel {
            public var bandwidth: Int32?

            public var bandwidthType: String?

            public var instanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bandwidth != nil {
                    map["Bandwidth"] = self.bandwidth!
                }
                if self.bandwidthType != nil {
                    map["BandwidthType"] = self.bandwidthType!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bandwidth") {
                    self.bandwidth = dict["Bandwidth"] as! Int32
                }
                if dict.keys.contains("BandwidthType") {
                    self.bandwidthType = dict["BandwidthType"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
            }
        }
        public class CrossDomainBandwidthPackage : Tea.TeaModel {
            public var bandwidth: Int32?

            public var instanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bandwidth != nil {
                    map["Bandwidth"] = self.bandwidth!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bandwidth") {
                    self.bandwidth = dict["Bandwidth"] as! Int32
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var acceleratorId: String?

        public var bandwidthBillingType: String?

        public var basicBandwidthPackage: ListBasicAcceleratorsResponseBody.Accelerators.BasicBandwidthPackage?

        public var basicEndpointGroupId: String?

        public var basicIpSetId: String?

        public var createTime: Int64?

        public var crossDomainBandwidthPackage: ListBasicAcceleratorsResponseBody.Accelerators.CrossDomainBandwidthPackage?

        public var description_: String?

        public var expiredTime: Int64?

        public var instanceChargeType: String?

        public var name: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var state: String?

        public var tags: [ListBasicAcceleratorsResponseBody.Accelerators.Tags]?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.basicBandwidthPackage?.validate()
            try self.crossDomainBandwidthPackage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorId != nil {
                map["AcceleratorId"] = self.acceleratorId!
            }
            if self.bandwidthBillingType != nil {
                map["BandwidthBillingType"] = self.bandwidthBillingType!
            }
            if self.basicBandwidthPackage != nil {
                map["BasicBandwidthPackage"] = self.basicBandwidthPackage?.toMap()
            }
            if self.basicEndpointGroupId != nil {
                map["BasicEndpointGroupId"] = self.basicEndpointGroupId!
            }
            if self.basicIpSetId != nil {
                map["BasicIpSetId"] = self.basicIpSetId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.crossDomainBandwidthPackage != nil {
                map["CrossDomainBandwidthPackage"] = self.crossDomainBandwidthPackage?.toMap()
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.instanceChargeType != nil {
                map["InstanceChargeType"] = self.instanceChargeType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorId") {
                self.acceleratorId = dict["AcceleratorId"] as! String
            }
            if dict.keys.contains("BandwidthBillingType") {
                self.bandwidthBillingType = dict["BandwidthBillingType"] as! String
            }
            if dict.keys.contains("BasicBandwidthPackage") {
                var model = ListBasicAcceleratorsResponseBody.Accelerators.BasicBandwidthPackage()
                model.fromMap(dict["BasicBandwidthPackage"] as! [String: Any])
                self.basicBandwidthPackage = model
            }
            if dict.keys.contains("BasicEndpointGroupId") {
                self.basicEndpointGroupId = dict["BasicEndpointGroupId"] as! String
            }
            if dict.keys.contains("BasicIpSetId") {
                self.basicIpSetId = dict["BasicIpSetId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("CrossDomainBandwidthPackage") {
                var model = ListBasicAcceleratorsResponseBody.Accelerators.CrossDomainBandwidthPackage()
                model.fromMap(dict["CrossDomainBandwidthPackage"] as! [String: Any])
                self.crossDomainBandwidthPackage = model
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! Int64
            }
            if dict.keys.contains("InstanceChargeType") {
                self.instanceChargeType = dict["InstanceChargeType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [ListBasicAcceleratorsResponseBody.Accelerators.Tags]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var accelerators: [ListBasicAcceleratorsResponseBody.Accelerators]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerators != nil {
            var tmp : [Any] = []
            for k in self.accelerators! {
                tmp.append(k.toMap())
            }
            map["Accelerators"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accelerators") {
            self.accelerators = dict["Accelerators"] as! [ListBasicAcceleratorsResponseBody.Accelerators]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListBasicAcceleratorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBasicAcceleratorsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListBasicAcceleratorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBusiRegionsRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListBusiRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var regionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var regions: [ListBusiRegionsResponseBody.Regions]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! [ListBusiRegionsResponseBody.Regions]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListBusiRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBusiRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListBusiRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomRoutingEndpointGroupDestinationsRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var endpointGroupId: String?

    public var fromPort: Int32?

    public var listenerId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var protocols: [String]?

    public var regionId: String?

    public var toPort: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.fromPort != nil {
            map["FromPort"] = self.fromPort!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.protocols != nil {
            map["Protocols"] = self.protocols!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.toPort != nil {
            map["ToPort"] = self.toPort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("FromPort") {
            self.fromPort = dict["FromPort"] as! Int32
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Protocols") {
            self.protocols = dict["Protocols"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ToPort") {
            self.toPort = dict["ToPort"] as! Int32
        }
    }
}

public class ListCustomRoutingEndpointGroupDestinationsResponseBody : Tea.TeaModel {
    public class Destinations : Tea.TeaModel {
        public var acceleratorId: String?

        public var destinationId: String?

        public var endpointGroupId: String?

        public var fromPort: Int32?

        public var listenerId: String?

        public var protocols: [String]?

        public var toPort: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorId != nil {
                map["AcceleratorId"] = self.acceleratorId!
            }
            if self.destinationId != nil {
                map["DestinationId"] = self.destinationId!
            }
            if self.endpointGroupId != nil {
                map["EndpointGroupId"] = self.endpointGroupId!
            }
            if self.fromPort != nil {
                map["FromPort"] = self.fromPort!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.protocols != nil {
                map["Protocols"] = self.protocols!
            }
            if self.toPort != nil {
                map["ToPort"] = self.toPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorId") {
                self.acceleratorId = dict["AcceleratorId"] as! String
            }
            if dict.keys.contains("DestinationId") {
                self.destinationId = dict["DestinationId"] as! String
            }
            if dict.keys.contains("EndpointGroupId") {
                self.endpointGroupId = dict["EndpointGroupId"] as! String
            }
            if dict.keys.contains("FromPort") {
                self.fromPort = dict["FromPort"] as! Int32
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("Protocols") {
                self.protocols = dict["Protocols"] as! [String]
            }
            if dict.keys.contains("ToPort") {
                self.toPort = dict["ToPort"] as! Int32
            }
        }
    }
    public var destinations: [ListCustomRoutingEndpointGroupDestinationsResponseBody.Destinations]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinations != nil {
            var tmp : [Any] = []
            for k in self.destinations! {
                tmp.append(k.toMap())
            }
            map["Destinations"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Destinations") {
            self.destinations = dict["Destinations"] as! [ListCustomRoutingEndpointGroupDestinationsResponseBody.Destinations]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListCustomRoutingEndpointGroupDestinationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomRoutingEndpointGroupDestinationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCustomRoutingEndpointGroupDestinationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomRoutingEndpointGroupsRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var endpointGroupId: String?

    public var listenerId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListCustomRoutingEndpointGroupsResponseBody : Tea.TeaModel {
    public class EndpointGroups : Tea.TeaModel {
        public var acceleratorId: String?

        public var description_: String?

        public var endpointGroupId: String?

        public var endpointGroupIpList: [String]?

        public var endpointGroupRegion: String?

        public var endpointGroupUnconfirmedIpList: [String]?

        public var listenerId: String?

        public var name: String?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorId != nil {
                map["AcceleratorId"] = self.acceleratorId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endpointGroupId != nil {
                map["EndpointGroupId"] = self.endpointGroupId!
            }
            if self.endpointGroupIpList != nil {
                map["EndpointGroupIpList"] = self.endpointGroupIpList!
            }
            if self.endpointGroupRegion != nil {
                map["EndpointGroupRegion"] = self.endpointGroupRegion!
            }
            if self.endpointGroupUnconfirmedIpList != nil {
                map["EndpointGroupUnconfirmedIpList"] = self.endpointGroupUnconfirmedIpList!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorId") {
                self.acceleratorId = dict["AcceleratorId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EndpointGroupId") {
                self.endpointGroupId = dict["EndpointGroupId"] as! String
            }
            if dict.keys.contains("EndpointGroupIpList") {
                self.endpointGroupIpList = dict["EndpointGroupIpList"] as! [String]
            }
            if dict.keys.contains("EndpointGroupRegion") {
                self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
            }
            if dict.keys.contains("EndpointGroupUnconfirmedIpList") {
                self.endpointGroupUnconfirmedIpList = dict["EndpointGroupUnconfirmedIpList"] as! [String]
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
        }
    }
    public var endpointGroups: [ListCustomRoutingEndpointGroupsResponseBody.EndpointGroups]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointGroups != nil {
            var tmp : [Any] = []
            for k in self.endpointGroups! {
                tmp.append(k.toMap())
            }
            map["EndpointGroups"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointGroups") {
            self.endpointGroups = dict["EndpointGroups"] as! [ListCustomRoutingEndpointGroupsResponseBody.EndpointGroups]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListCustomRoutingEndpointGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomRoutingEndpointGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCustomRoutingEndpointGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomRoutingEndpointTrafficPoliciesRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var address: String?

    public var endpointGroupId: String?

    public var endpointId: String?

    public var listenerId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListCustomRoutingEndpointTrafficPoliciesResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class PortRanges : Tea.TeaModel {
            public var fromPort: Int32?

            public var toPort: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fromPort != nil {
                    map["FromPort"] = self.fromPort!
                }
                if self.toPort != nil {
                    map["ToPort"] = self.toPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FromPort") {
                    self.fromPort = dict["FromPort"] as! Int32
                }
                if dict.keys.contains("ToPort") {
                    self.toPort = dict["ToPort"] as! Int32
                }
            }
        }
        public var acceleratorId: String?

        public var address: String?

        public var endpointGroupId: String?

        public var endpointId: String?

        public var listenerId: String?

        public var policyId: String?

        public var portRanges: [ListCustomRoutingEndpointTrafficPoliciesResponseBody.Policies.PortRanges]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorId != nil {
                map["AcceleratorId"] = self.acceleratorId!
            }
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.endpointGroupId != nil {
                map["EndpointGroupId"] = self.endpointGroupId!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.portRanges != nil {
                var tmp : [Any] = []
                for k in self.portRanges! {
                    tmp.append(k.toMap())
                }
                map["PortRanges"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorId") {
                self.acceleratorId = dict["AcceleratorId"] as! String
            }
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("EndpointGroupId") {
                self.endpointGroupId = dict["EndpointGroupId"] as! String
            }
            if dict.keys.contains("EndpointId") {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("PortRanges") {
                self.portRanges = dict["PortRanges"] as! [ListCustomRoutingEndpointTrafficPoliciesResponseBody.Policies.PortRanges]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policies: [ListCustomRoutingEndpointTrafficPoliciesResponseBody.Policies]?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policies != nil {
            var tmp : [Any] = []
            for k in self.policies! {
                tmp.append(k.toMap())
            }
            map["Policies"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Policies") {
            self.policies = dict["Policies"] as! [ListCustomRoutingEndpointTrafficPoliciesResponseBody.Policies]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListCustomRoutingEndpointTrafficPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomRoutingEndpointTrafficPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCustomRoutingEndpointTrafficPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomRoutingEndpointsRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var endpointGroupId: String?

    public var listenerId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListCustomRoutingEndpointsResponseBody : Tea.TeaModel {
    public class Endpoints : Tea.TeaModel {
        public var acceleratorId: String?

        public var endpoint: String?

        public var endpointGroupId: String?

        public var endpointId: String?

        public var listenerId: String?

        public var trafficToEndpointPolicy: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorId != nil {
                map["AcceleratorId"] = self.acceleratorId!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.endpointGroupId != nil {
                map["EndpointGroupId"] = self.endpointGroupId!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.trafficToEndpointPolicy != nil {
                map["TrafficToEndpointPolicy"] = self.trafficToEndpointPolicy!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorId") {
                self.acceleratorId = dict["AcceleratorId"] as! String
            }
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("EndpointGroupId") {
                self.endpointGroupId = dict["EndpointGroupId"] as! String
            }
            if dict.keys.contains("EndpointId") {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("TrafficToEndpointPolicy") {
                self.trafficToEndpointPolicy = dict["TrafficToEndpointPolicy"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var endpoints: [ListCustomRoutingEndpointsResponseBody.Endpoints]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpoints != nil {
            var tmp : [Any] = []
            for k in self.endpoints! {
                tmp.append(k.toMap())
            }
            map["Endpoints"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Endpoints") {
            self.endpoints = dict["Endpoints"] as! [ListCustomRoutingEndpointsResponseBody.Endpoints]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListCustomRoutingEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomRoutingEndpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCustomRoutingEndpointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomRoutingPortMappingsRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var endpointGroupId: String?

    public var listenerId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListCustomRoutingPortMappingsResponseBody : Tea.TeaModel {
    public class PortMappings : Tea.TeaModel {
        public class DestinationSocketAddress : Tea.TeaModel {
            public var ipAddress: String?

            public var port: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ipAddress != nil {
                    map["IpAddress"] = self.ipAddress!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IpAddress") {
                    self.ipAddress = dict["IpAddress"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
            }
        }
        public var acceleratorId: String?

        public var acceleratorPort: Int32?

        public var destinationSocketAddress: ListCustomRoutingPortMappingsResponseBody.PortMappings.DestinationSocketAddress?

        public var destinationTrafficState: String?

        public var endpointGroupId: String?

        public var endpointGroupRegion: String?

        public var endpointId: String?

        public var listenerId: String?

        public var protocols: [String]?

        public var vswitch: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.destinationSocketAddress?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorId != nil {
                map["AcceleratorId"] = self.acceleratorId!
            }
            if self.acceleratorPort != nil {
                map["AcceleratorPort"] = self.acceleratorPort!
            }
            if self.destinationSocketAddress != nil {
                map["DestinationSocketAddress"] = self.destinationSocketAddress?.toMap()
            }
            if self.destinationTrafficState != nil {
                map["DestinationTrafficState"] = self.destinationTrafficState!
            }
            if self.endpointGroupId != nil {
                map["EndpointGroupId"] = self.endpointGroupId!
            }
            if self.endpointGroupRegion != nil {
                map["EndpointGroupRegion"] = self.endpointGroupRegion!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.protocols != nil {
                map["Protocols"] = self.protocols!
            }
            if self.vswitch != nil {
                map["Vswitch"] = self.vswitch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorId") {
                self.acceleratorId = dict["AcceleratorId"] as! String
            }
            if dict.keys.contains("AcceleratorPort") {
                self.acceleratorPort = dict["AcceleratorPort"] as! Int32
            }
            if dict.keys.contains("DestinationSocketAddress") {
                var model = ListCustomRoutingPortMappingsResponseBody.PortMappings.DestinationSocketAddress()
                model.fromMap(dict["DestinationSocketAddress"] as! [String: Any])
                self.destinationSocketAddress = model
            }
            if dict.keys.contains("DestinationTrafficState") {
                self.destinationTrafficState = dict["DestinationTrafficState"] as! String
            }
            if dict.keys.contains("EndpointGroupId") {
                self.endpointGroupId = dict["EndpointGroupId"] as! String
            }
            if dict.keys.contains("EndpointGroupRegion") {
                self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
            }
            if dict.keys.contains("EndpointId") {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("Protocols") {
                self.protocols = dict["Protocols"] as! [String]
            }
            if dict.keys.contains("Vswitch") {
                self.vswitch = dict["Vswitch"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var portMappings: [ListCustomRoutingPortMappingsResponseBody.PortMappings]?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.portMappings != nil {
            var tmp : [Any] = []
            for k in self.portMappings! {
                tmp.append(k.toMap())
            }
            map["PortMappings"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PortMappings") {
            self.portMappings = dict["PortMappings"] as! [ListCustomRoutingPortMappingsResponseBody.PortMappings]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListCustomRoutingPortMappingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomRoutingPortMappingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCustomRoutingPortMappingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomRoutingPortMappingsByDestinationRequest : Tea.TeaModel {
    public var destinationAddress: String?

    public var endpointId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationAddress != nil {
            map["DestinationAddress"] = self.destinationAddress!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestinationAddress") {
            self.destinationAddress = dict["DestinationAddress"] as! String
        }
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListCustomRoutingPortMappingsByDestinationResponseBody : Tea.TeaModel {
    public class PortMappings : Tea.TeaModel {
        public class DestinationSocketAddress : Tea.TeaModel {
            public var ipAddress: String?

            public var port: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ipAddress != nil {
                    map["IpAddress"] = self.ipAddress!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IpAddress") {
                    self.ipAddress = dict["IpAddress"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
            }
        }
        public var acceleratorId: String?

        public var acceleratorPort: Int32?

        public var destinationSocketAddress: ListCustomRoutingPortMappingsByDestinationResponseBody.PortMappings.DestinationSocketAddress?

        public var destinationTrafficState: String?

        public var endpointGroupId: String?

        public var endpointGroupRegion: String?

        public var endpointId: String?

        public var listenerId: String?

        public var protocols: [String]?

        public var vswitch: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.destinationSocketAddress?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorId != nil {
                map["AcceleratorId"] = self.acceleratorId!
            }
            if self.acceleratorPort != nil {
                map["AcceleratorPort"] = self.acceleratorPort!
            }
            if self.destinationSocketAddress != nil {
                map["DestinationSocketAddress"] = self.destinationSocketAddress?.toMap()
            }
            if self.destinationTrafficState != nil {
                map["DestinationTrafficState"] = self.destinationTrafficState!
            }
            if self.endpointGroupId != nil {
                map["EndpointGroupId"] = self.endpointGroupId!
            }
            if self.endpointGroupRegion != nil {
                map["EndpointGroupRegion"] = self.endpointGroupRegion!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.protocols != nil {
                map["Protocols"] = self.protocols!
            }
            if self.vswitch != nil {
                map["Vswitch"] = self.vswitch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorId") {
                self.acceleratorId = dict["AcceleratorId"] as! String
            }
            if dict.keys.contains("AcceleratorPort") {
                self.acceleratorPort = dict["AcceleratorPort"] as! Int32
            }
            if dict.keys.contains("DestinationSocketAddress") {
                var model = ListCustomRoutingPortMappingsByDestinationResponseBody.PortMappings.DestinationSocketAddress()
                model.fromMap(dict["DestinationSocketAddress"] as! [String: Any])
                self.destinationSocketAddress = model
            }
            if dict.keys.contains("DestinationTrafficState") {
                self.destinationTrafficState = dict["DestinationTrafficState"] as! String
            }
            if dict.keys.contains("EndpointGroupId") {
                self.endpointGroupId = dict["EndpointGroupId"] as! String
            }
            if dict.keys.contains("EndpointGroupRegion") {
                self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
            }
            if dict.keys.contains("EndpointId") {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("Protocols") {
                self.protocols = dict["Protocols"] as! [String]
            }
            if dict.keys.contains("Vswitch") {
                self.vswitch = dict["Vswitch"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var portMappings: [ListCustomRoutingPortMappingsByDestinationResponseBody.PortMappings]?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.portMappings != nil {
            var tmp : [Any] = []
            for k in self.portMappings! {
                tmp.append(k.toMap())
            }
            map["PortMappings"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PortMappings") {
            self.portMappings = dict["PortMappings"] as! [ListCustomRoutingPortMappingsByDestinationResponseBody.PortMappings]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListCustomRoutingPortMappingsByDestinationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomRoutingPortMappingsByDestinationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCustomRoutingPortMappingsByDestinationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEndpointGroupsRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var acceleratorId: String?

    public var accessLogSwitch: String?

    public var endpointGroupId: String?

    public var endpointGroupType: String?

    public var listenerId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var tag: [ListEndpointGroupsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.accessLogSwitch != nil {
            map["AccessLogSwitch"] = self.accessLogSwitch!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.endpointGroupType != nil {
            map["EndpointGroupType"] = self.endpointGroupType!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("AccessLogSwitch") {
            self.accessLogSwitch = dict["AccessLogSwitch"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("EndpointGroupType") {
            self.endpointGroupType = dict["EndpointGroupType"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListEndpointGroupsRequest.Tag]
        }
    }
}

public class ListEndpointGroupsResponseBody : Tea.TeaModel {
    public class EndpointGroups : Tea.TeaModel {
        public class EndpointConfigurations : Tea.TeaModel {
            public var enableClientIPPreservation: Bool?

            public var endpoint: String?

            public var endpointId: String?

            public var probePort: Int32?

            public var probeProtocol: String?

            public var type: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableClientIPPreservation != nil {
                    map["EnableClientIPPreservation"] = self.enableClientIPPreservation!
                }
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.probePort != nil {
                    map["ProbePort"] = self.probePort!
                }
                if self.probeProtocol != nil {
                    map["ProbeProtocol"] = self.probeProtocol!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableClientIPPreservation") {
                    self.enableClientIPPreservation = dict["EnableClientIPPreservation"] as! Bool
                }
                if dict.keys.contains("Endpoint") {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("EndpointId") {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("ProbePort") {
                    self.probePort = dict["ProbePort"] as! Int32
                }
                if dict.keys.contains("ProbeProtocol") {
                    self.probeProtocol = dict["ProbeProtocol"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public class PortOverrides : Tea.TeaModel {
            public var endpointPort: Int32?

            public var listenerPort: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpointPort != nil {
                    map["EndpointPort"] = self.endpointPort!
                }
                if self.listenerPort != nil {
                    map["ListenerPort"] = self.listenerPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndpointPort") {
                    self.endpointPort = dict["EndpointPort"] as! Int32
                }
                if dict.keys.contains("ListenerPort") {
                    self.listenerPort = dict["ListenerPort"] as! Int32
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var acceleratorId: String?

        public var description_: String?

        public var endpointConfigurations: [ListEndpointGroupsResponseBody.EndpointGroups.EndpointConfigurations]?

        public var endpointGroupId: String?

        public var endpointGroupIpList: [String]?

        public var endpointGroupRegion: String?

        public var endpointGroupType: String?

        public var endpointGroupUnconfirmedIpList: [String]?

        public var endpointRequestProtocol: String?

        public var forwardingRuleIds: [String]?

        public var healthCheckEnabled: Bool?

        public var healthCheckIntervalSeconds: Int32?

        public var healthCheckPath: String?

        public var healthCheckPort: Int32?

        public var healthCheckProtocol: String?

        public var listenerId: String?

        public var name: String?

        public var portOverrides: [ListEndpointGroupsResponseBody.EndpointGroups.PortOverrides]?

        public var state: String?

        public var tags: [ListEndpointGroupsResponseBody.EndpointGroups.Tags]?

        public var thresholdCount: Int32?

        public var trafficPercentage: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorId != nil {
                map["AcceleratorId"] = self.acceleratorId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endpointConfigurations != nil {
                var tmp : [Any] = []
                for k in self.endpointConfigurations! {
                    tmp.append(k.toMap())
                }
                map["EndpointConfigurations"] = tmp
            }
            if self.endpointGroupId != nil {
                map["EndpointGroupId"] = self.endpointGroupId!
            }
            if self.endpointGroupIpList != nil {
                map["EndpointGroupIpList"] = self.endpointGroupIpList!
            }
            if self.endpointGroupRegion != nil {
                map["EndpointGroupRegion"] = self.endpointGroupRegion!
            }
            if self.endpointGroupType != nil {
                map["EndpointGroupType"] = self.endpointGroupType!
            }
            if self.endpointGroupUnconfirmedIpList != nil {
                map["EndpointGroupUnconfirmedIpList"] = self.endpointGroupUnconfirmedIpList!
            }
            if self.endpointRequestProtocol != nil {
                map["EndpointRequestProtocol"] = self.endpointRequestProtocol!
            }
            if self.forwardingRuleIds != nil {
                map["ForwardingRuleIds"] = self.forwardingRuleIds!
            }
            if self.healthCheckEnabled != nil {
                map["HealthCheckEnabled"] = self.healthCheckEnabled!
            }
            if self.healthCheckIntervalSeconds != nil {
                map["HealthCheckIntervalSeconds"] = self.healthCheckIntervalSeconds!
            }
            if self.healthCheckPath != nil {
                map["HealthCheckPath"] = self.healthCheckPath!
            }
            if self.healthCheckPort != nil {
                map["HealthCheckPort"] = self.healthCheckPort!
            }
            if self.healthCheckProtocol != nil {
                map["HealthCheckProtocol"] = self.healthCheckProtocol!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.portOverrides != nil {
                var tmp : [Any] = []
                for k in self.portOverrides! {
                    tmp.append(k.toMap())
                }
                map["PortOverrides"] = tmp
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.thresholdCount != nil {
                map["ThresholdCount"] = self.thresholdCount!
            }
            if self.trafficPercentage != nil {
                map["TrafficPercentage"] = self.trafficPercentage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorId") {
                self.acceleratorId = dict["AcceleratorId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EndpointConfigurations") {
                self.endpointConfigurations = dict["EndpointConfigurations"] as! [ListEndpointGroupsResponseBody.EndpointGroups.EndpointConfigurations]
            }
            if dict.keys.contains("EndpointGroupId") {
                self.endpointGroupId = dict["EndpointGroupId"] as! String
            }
            if dict.keys.contains("EndpointGroupIpList") {
                self.endpointGroupIpList = dict["EndpointGroupIpList"] as! [String]
            }
            if dict.keys.contains("EndpointGroupRegion") {
                self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
            }
            if dict.keys.contains("EndpointGroupType") {
                self.endpointGroupType = dict["EndpointGroupType"] as! String
            }
            if dict.keys.contains("EndpointGroupUnconfirmedIpList") {
                self.endpointGroupUnconfirmedIpList = dict["EndpointGroupUnconfirmedIpList"] as! [String]
            }
            if dict.keys.contains("EndpointRequestProtocol") {
                self.endpointRequestProtocol = dict["EndpointRequestProtocol"] as! String
            }
            if dict.keys.contains("ForwardingRuleIds") {
                self.forwardingRuleIds = dict["ForwardingRuleIds"] as! [String]
            }
            if dict.keys.contains("HealthCheckEnabled") {
                self.healthCheckEnabled = dict["HealthCheckEnabled"] as! Bool
            }
            if dict.keys.contains("HealthCheckIntervalSeconds") {
                self.healthCheckIntervalSeconds = dict["HealthCheckIntervalSeconds"] as! Int32
            }
            if dict.keys.contains("HealthCheckPath") {
                self.healthCheckPath = dict["HealthCheckPath"] as! String
            }
            if dict.keys.contains("HealthCheckPort") {
                self.healthCheckPort = dict["HealthCheckPort"] as! Int32
            }
            if dict.keys.contains("HealthCheckProtocol") {
                self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PortOverrides") {
                self.portOverrides = dict["PortOverrides"] as! [ListEndpointGroupsResponseBody.EndpointGroups.PortOverrides]
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [ListEndpointGroupsResponseBody.EndpointGroups.Tags]
            }
            if dict.keys.contains("ThresholdCount") {
                self.thresholdCount = dict["ThresholdCount"] as! Int32
            }
            if dict.keys.contains("TrafficPercentage") {
                self.trafficPercentage = dict["TrafficPercentage"] as! Int32
            }
        }
    }
    public var endpointGroups: [ListEndpointGroupsResponseBody.EndpointGroups]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointGroups != nil {
            var tmp : [Any] = []
            for k in self.endpointGroups! {
                tmp.append(k.toMap())
            }
            map["EndpointGroups"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointGroups") {
            self.endpointGroups = dict["EndpointGroups"] as! [ListEndpointGroupsResponseBody.EndpointGroups]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListEndpointGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEndpointGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListEndpointGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListForwardingRulesRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var forwardingRuleId: String?

    public var listenerId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.forwardingRuleId != nil {
            map["ForwardingRuleId"] = self.forwardingRuleId!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ForwardingRuleId") {
            self.forwardingRuleId = dict["ForwardingRuleId"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListForwardingRulesResponseBody : Tea.TeaModel {
    public class ForwardingRules : Tea.TeaModel {
        public class RuleActions : Tea.TeaModel {
            public class ForwardGroupConfig : Tea.TeaModel {
                public class ServerGroupTuples : Tea.TeaModel {
                    public var endpointGroupId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.endpointGroupId != nil {
                            map["EndpointGroupId"] = self.endpointGroupId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EndpointGroupId") {
                            self.endpointGroupId = dict["EndpointGroupId"] as! String
                        }
                    }
                }
                public var serverGroupTuples: [ListForwardingRulesResponseBody.ForwardingRules.RuleActions.ForwardGroupConfig.ServerGroupTuples]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serverGroupTuples != nil {
                        var tmp : [Any] = []
                        for k in self.serverGroupTuples! {
                            tmp.append(k.toMap())
                        }
                        map["ServerGroupTuples"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupTuples") {
                        self.serverGroupTuples = dict["ServerGroupTuples"] as! [ListForwardingRulesResponseBody.ForwardingRules.RuleActions.ForwardGroupConfig.ServerGroupTuples]
                    }
                }
            }
            public var forwardGroupConfig: ListForwardingRulesResponseBody.ForwardingRules.RuleActions.ForwardGroupConfig?

            public var order: Int32?

            public var ruleActionType: String?

            public var ruleActionValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.forwardGroupConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.forwardGroupConfig != nil {
                    map["ForwardGroupConfig"] = self.forwardGroupConfig?.toMap()
                }
                if self.order != nil {
                    map["Order"] = self.order!
                }
                if self.ruleActionType != nil {
                    map["RuleActionType"] = self.ruleActionType!
                }
                if self.ruleActionValue != nil {
                    map["RuleActionValue"] = self.ruleActionValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ForwardGroupConfig") {
                    var model = ListForwardingRulesResponseBody.ForwardingRules.RuleActions.ForwardGroupConfig()
                    model.fromMap(dict["ForwardGroupConfig"] as! [String: Any])
                    self.forwardGroupConfig = model
                }
                if dict.keys.contains("Order") {
                    self.order = dict["Order"] as! Int32
                }
                if dict.keys.contains("RuleActionType") {
                    self.ruleActionType = dict["RuleActionType"] as! String
                }
                if dict.keys.contains("RuleActionValue") {
                    self.ruleActionValue = dict["RuleActionValue"] as! String
                }
            }
        }
        public class RuleConditions : Tea.TeaModel {
            public class HostConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public class PathConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public var hostConfig: ListForwardingRulesResponseBody.ForwardingRules.RuleConditions.HostConfig?

            public var pathConfig: ListForwardingRulesResponseBody.ForwardingRules.RuleConditions.PathConfig?

            public var ruleConditionType: String?

            public var ruleConditionValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.hostConfig?.validate()
                try self.pathConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hostConfig != nil {
                    map["HostConfig"] = self.hostConfig?.toMap()
                }
                if self.pathConfig != nil {
                    map["PathConfig"] = self.pathConfig?.toMap()
                }
                if self.ruleConditionType != nil {
                    map["RuleConditionType"] = self.ruleConditionType!
                }
                if self.ruleConditionValue != nil {
                    map["RuleConditionValue"] = self.ruleConditionValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HostConfig") {
                    var model = ListForwardingRulesResponseBody.ForwardingRules.RuleConditions.HostConfig()
                    model.fromMap(dict["HostConfig"] as! [String: Any])
                    self.hostConfig = model
                }
                if dict.keys.contains("PathConfig") {
                    var model = ListForwardingRulesResponseBody.ForwardingRules.RuleConditions.PathConfig()
                    model.fromMap(dict["PathConfig"] as! [String: Any])
                    self.pathConfig = model
                }
                if dict.keys.contains("RuleConditionType") {
                    self.ruleConditionType = dict["RuleConditionType"] as! String
                }
                if dict.keys.contains("RuleConditionValue") {
                    self.ruleConditionValue = dict["RuleConditionValue"] as! String
                }
            }
        }
        public var forwardingRuleDirection: String?

        public var forwardingRuleId: String?

        public var forwardingRuleName: String?

        public var forwardingRuleStatus: String?

        public var listenerId: String?

        public var priority: Int32?

        public var ruleActions: [ListForwardingRulesResponseBody.ForwardingRules.RuleActions]?

        public var ruleConditions: [ListForwardingRulesResponseBody.ForwardingRules.RuleConditions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.forwardingRuleDirection != nil {
                map["ForwardingRuleDirection"] = self.forwardingRuleDirection!
            }
            if self.forwardingRuleId != nil {
                map["ForwardingRuleId"] = self.forwardingRuleId!
            }
            if self.forwardingRuleName != nil {
                map["ForwardingRuleName"] = self.forwardingRuleName!
            }
            if self.forwardingRuleStatus != nil {
                map["ForwardingRuleStatus"] = self.forwardingRuleStatus!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.ruleActions != nil {
                var tmp : [Any] = []
                for k in self.ruleActions! {
                    tmp.append(k.toMap())
                }
                map["RuleActions"] = tmp
            }
            if self.ruleConditions != nil {
                var tmp : [Any] = []
                for k in self.ruleConditions! {
                    tmp.append(k.toMap())
                }
                map["RuleConditions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ForwardingRuleDirection") {
                self.forwardingRuleDirection = dict["ForwardingRuleDirection"] as! String
            }
            if dict.keys.contains("ForwardingRuleId") {
                self.forwardingRuleId = dict["ForwardingRuleId"] as! String
            }
            if dict.keys.contains("ForwardingRuleName") {
                self.forwardingRuleName = dict["ForwardingRuleName"] as! String
            }
            if dict.keys.contains("ForwardingRuleStatus") {
                self.forwardingRuleStatus = dict["ForwardingRuleStatus"] as! String
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RuleActions") {
                self.ruleActions = dict["RuleActions"] as! [ListForwardingRulesResponseBody.ForwardingRules.RuleActions]
            }
            if dict.keys.contains("RuleConditions") {
                self.ruleConditions = dict["RuleConditions"] as! [ListForwardingRulesResponseBody.ForwardingRules.RuleConditions]
            }
        }
    }
    public var forwardingRules: [ListForwardingRulesResponseBody.ForwardingRules]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forwardingRules != nil {
            var tmp : [Any] = []
            for k in self.forwardingRules! {
                tmp.append(k.toMap())
            }
            map["ForwardingRules"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ForwardingRules") {
            self.forwardingRules = dict["ForwardingRules"] as! [ListForwardingRulesResponseBody.ForwardingRules]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListForwardingRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListForwardingRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListForwardingRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIpSetsRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListIpSetsResponseBody : Tea.TeaModel {
    public class IpSets : Tea.TeaModel {
        public var accelerateRegionId: String?

        public var bandwidth: Int32?

        public var ipAddressList: [String]?

        public var ipSetId: String?

        public var ipVersion: String?

        public var ispType: String?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accelerateRegionId != nil {
                map["AccelerateRegionId"] = self.accelerateRegionId!
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.ipAddressList != nil {
                map["IpAddressList"] = self.ipAddressList!
            }
            if self.ipSetId != nil {
                map["IpSetId"] = self.ipSetId!
            }
            if self.ipVersion != nil {
                map["IpVersion"] = self.ipVersion!
            }
            if self.ispType != nil {
                map["IspType"] = self.ispType!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccelerateRegionId") {
                self.accelerateRegionId = dict["AccelerateRegionId"] as! String
            }
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("IpAddressList") {
                self.ipAddressList = dict["IpAddressList"] as! [String]
            }
            if dict.keys.contains("IpSetId") {
                self.ipSetId = dict["IpSetId"] as! String
            }
            if dict.keys.contains("IpVersion") {
                self.ipVersion = dict["IpVersion"] as! String
            }
            if dict.keys.contains("IspType") {
                self.ispType = dict["IspType"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
        }
    }
    public var ipSets: [ListIpSetsResponseBody.IpSets]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipSets != nil {
            var tmp : [Any] = []
            for k in self.ipSets! {
                tmp.append(k.toMap())
            }
            map["IpSets"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpSets") {
            self.ipSets = dict["IpSets"] as! [ListIpSetsResponseBody.IpSets]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListIpSetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIpSetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListIpSetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListListenerCertificatesRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var listenerId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var role: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
    }
}

public class ListListenerCertificatesResponseBody : Tea.TeaModel {
    public class Certificates : Tea.TeaModel {
        public var certificateId: String?

        public var domain: String?

        public var isDefault: Bool?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certificateId != nil {
                map["CertificateId"] = self.certificateId!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateId") {
                self.certificateId = dict["CertificateId"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("IsDefault") {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
        }
    }
    public var certificates: [ListListenerCertificatesResponseBody.Certificates]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificates != nil {
            var tmp : [Any] = []
            for k in self.certificates! {
                tmp.append(k.toMap())
            }
            map["Certificates"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificates") {
            self.certificates = dict["Certificates"] as! [ListListenerCertificatesResponseBody.Certificates]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListListenerCertificatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListListenerCertificatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListListenerCertificatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListListenersRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListListenersResponseBody : Tea.TeaModel {
    public class Listeners : Tea.TeaModel {
        public class BackendPorts : Tea.TeaModel {
            public var fromPort: String?

            public var toPort: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fromPort != nil {
                    map["FromPort"] = self.fromPort!
                }
                if self.toPort != nil {
                    map["ToPort"] = self.toPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FromPort") {
                    self.fromPort = dict["FromPort"] as! String
                }
                if dict.keys.contains("ToPort") {
                    self.toPort = dict["ToPort"] as! String
                }
            }
        }
        public class Certificates : Tea.TeaModel {
            public var id: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class PortRanges : Tea.TeaModel {
            public var fromPort: Int32?

            public var toPort: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fromPort != nil {
                    map["FromPort"] = self.fromPort!
                }
                if self.toPort != nil {
                    map["ToPort"] = self.toPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FromPort") {
                    self.fromPort = dict["FromPort"] as! Int32
                }
                if dict.keys.contains("ToPort") {
                    self.toPort = dict["ToPort"] as! Int32
                }
            }
        }
        public class XForwardedForConfig : Tea.TeaModel {
            public var XForwardedForGaApEnabled: Bool?

            public var XForwardedForGaIdEnabled: Bool?

            public var XForwardedForPortEnabled: Bool?

            public var XForwardedForProtoEnabled: Bool?

            public var XRealIpEnabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.XForwardedForGaApEnabled != nil {
                    map["XForwardedForGaApEnabled"] = self.XForwardedForGaApEnabled!
                }
                if self.XForwardedForGaIdEnabled != nil {
                    map["XForwardedForGaIdEnabled"] = self.XForwardedForGaIdEnabled!
                }
                if self.XForwardedForPortEnabled != nil {
                    map["XForwardedForPortEnabled"] = self.XForwardedForPortEnabled!
                }
                if self.XForwardedForProtoEnabled != nil {
                    map["XForwardedForProtoEnabled"] = self.XForwardedForProtoEnabled!
                }
                if self.XRealIpEnabled != nil {
                    map["XRealIpEnabled"] = self.XRealIpEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("XForwardedForGaApEnabled") {
                    self.XForwardedForGaApEnabled = dict["XForwardedForGaApEnabled"] as! Bool
                }
                if dict.keys.contains("XForwardedForGaIdEnabled") {
                    self.XForwardedForGaIdEnabled = dict["XForwardedForGaIdEnabled"] as! Bool
                }
                if dict.keys.contains("XForwardedForPortEnabled") {
                    self.XForwardedForPortEnabled = dict["XForwardedForPortEnabled"] as! Bool
                }
                if dict.keys.contains("XForwardedForProtoEnabled") {
                    self.XForwardedForProtoEnabled = dict["XForwardedForProtoEnabled"] as! Bool
                }
                if dict.keys.contains("XRealIpEnabled") {
                    self.XRealIpEnabled = dict["XRealIpEnabled"] as! Bool
                }
            }
        }
        public var acceleratorId: String?

        public var backendPorts: [ListListenersResponseBody.Listeners.BackendPorts]?

        public var certificates: [ListListenersResponseBody.Listeners.Certificates]?

        public var clientAffinity: String?

        public var createTime: Int64?

        public var description_: String?

        public var listenerId: String?

        public var name: String?

        public var portRanges: [ListListenersResponseBody.Listeners.PortRanges]?

        public var protocol_: String?

        public var proxyProtocol: Bool?

        public var securityPolicyId: String?

        public var state: String?

        public var type: String?

        public var XForwardedForConfig: ListListenersResponseBody.Listeners.XForwardedForConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.XForwardedForConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorId != nil {
                map["AcceleratorId"] = self.acceleratorId!
            }
            if self.backendPorts != nil {
                var tmp : [Any] = []
                for k in self.backendPorts! {
                    tmp.append(k.toMap())
                }
                map["BackendPorts"] = tmp
            }
            if self.certificates != nil {
                var tmp : [Any] = []
                for k in self.certificates! {
                    tmp.append(k.toMap())
                }
                map["Certificates"] = tmp
            }
            if self.clientAffinity != nil {
                map["ClientAffinity"] = self.clientAffinity!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.portRanges != nil {
                var tmp : [Any] = []
                for k in self.portRanges! {
                    tmp.append(k.toMap())
                }
                map["PortRanges"] = tmp
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.proxyProtocol != nil {
                map["ProxyProtocol"] = self.proxyProtocol!
            }
            if self.securityPolicyId != nil {
                map["SecurityPolicyId"] = self.securityPolicyId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.XForwardedForConfig != nil {
                map["XForwardedForConfig"] = self.XForwardedForConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorId") {
                self.acceleratorId = dict["AcceleratorId"] as! String
            }
            if dict.keys.contains("BackendPorts") {
                self.backendPorts = dict["BackendPorts"] as! [ListListenersResponseBody.Listeners.BackendPorts]
            }
            if dict.keys.contains("Certificates") {
                self.certificates = dict["Certificates"] as! [ListListenersResponseBody.Listeners.Certificates]
            }
            if dict.keys.contains("ClientAffinity") {
                self.clientAffinity = dict["ClientAffinity"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PortRanges") {
                self.portRanges = dict["PortRanges"] as! [ListListenersResponseBody.Listeners.PortRanges]
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("ProxyProtocol") {
                self.proxyProtocol = dict["ProxyProtocol"] as! Bool
            }
            if dict.keys.contains("SecurityPolicyId") {
                self.securityPolicyId = dict["SecurityPolicyId"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("XForwardedForConfig") {
                var model = ListListenersResponseBody.Listeners.XForwardedForConfig()
                model.fromMap(dict["XForwardedForConfig"] as! [String: Any])
                self.XForwardedForConfig = model
            }
        }
    }
    public var listeners: [ListListenersResponseBody.Listeners]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listeners != nil {
            var tmp : [Any] = []
            for k in self.listeners! {
                tmp.append(k.toMap())
            }
            map["Listeners"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Listeners") {
            self.listeners = dict["Listeners"] as! [ListListenersResponseBody.Listeners]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListListenersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListListenersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListListenersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSpareIpsRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListSpareIpsResponseBody : Tea.TeaModel {
    public class SpareIps : Tea.TeaModel {
        public var spareIp: String?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.spareIp != nil {
                map["SpareIp"] = self.spareIp!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SpareIp") {
                self.spareIp = dict["SpareIp"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
        }
    }
    public var requestId: String?

    public var spareIps: [ListSpareIpsResponseBody.SpareIps]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spareIps != nil {
            var tmp : [Any] = []
            for k in self.spareIps! {
                tmp.append(k.toMap())
            }
            map["SpareIps"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SpareIps") {
            self.spareIps = dict["SpareIps"] as! [ListSpareIpsResponseBody.SpareIps]
        }
    }
}

public class ListSpareIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSpareIpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSpareIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSystemSecurityPoliciesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListSystemSecurityPoliciesResponseBody : Tea.TeaModel {
    public class SecurityPolicies : Tea.TeaModel {
        public var ciphers: [String]?

        public var securityPolicyId: String?

        public var tlsVersions: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ciphers != nil {
                map["Ciphers"] = self.ciphers!
            }
            if self.securityPolicyId != nil {
                map["SecurityPolicyId"] = self.securityPolicyId!
            }
            if self.tlsVersions != nil {
                map["TlsVersions"] = self.tlsVersions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ciphers") {
                self.ciphers = dict["Ciphers"] as! [String]
            }
            if dict.keys.contains("SecurityPolicyId") {
                self.securityPolicyId = dict["SecurityPolicyId"] as! String
            }
            if dict.keys.contains("TlsVersions") {
                self.tlsVersions = dict["TlsVersions"] as! [String]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var securityPolicies: [ListSystemSecurityPoliciesResponseBody.SecurityPolicies]?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityPolicies != nil {
            var tmp : [Any] = []
            for k in self.securityPolicies! {
                tmp.append(k.toMap())
            }
            map["SecurityPolicies"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityPolicies") {
            self.securityPolicies = dict["SecurityPolicies"] as! [ListSystemSecurityPoliciesResponseBody.SecurityPolicies]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListSystemSecurityPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSystemSecurityPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSystemSecurityPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveEntriesFromAclRequest : Tea.TeaModel {
    public class AclEntries : Tea.TeaModel {
        public var entry: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entry != nil {
                map["Entry"] = self.entry!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Entry") {
                self.entry = dict["Entry"] as! String
            }
        }
    }
    public var aclEntries: [RemoveEntriesFromAclRequest.AclEntries]?

    public var aclId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclEntries != nil {
            var tmp : [Any] = []
            for k in self.aclEntries! {
                tmp.append(k.toMap())
            }
            map["AclEntries"] = tmp
        }
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclEntries") {
            self.aclEntries = dict["AclEntries"] as! [RemoveEntriesFromAclRequest.AclEntries]
        }
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RemoveEntriesFromAclResponseBody : Tea.TeaModel {
    public var aclId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveEntriesFromAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveEntriesFromAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RemoveEntriesFromAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReplaceBandwidthPackageRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var bandwidthPackageId: String?

    public var regionId: String?

    public var targetBandwidthPackageId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.targetBandwidthPackageId != nil {
            map["TargetBandwidthPackageId"] = self.targetBandwidthPackageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TargetBandwidthPackageId") {
            self.targetBandwidthPackageId = dict["TargetBandwidthPackageId"] as! String
        }
    }
}

public class ReplaceBandwidthPackageResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ReplaceBandwidthPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReplaceBandwidthPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReplaceBandwidthPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAcceleratorRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var autoPay: Bool?

    public var autoUseCoupon: Bool?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var spec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoUseCoupon != nil {
            map["AutoUseCoupon"] = self.autoUseCoupon!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("AutoUseCoupon") {
            self.autoUseCoupon = dict["AutoUseCoupon"] as! Bool
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Spec") {
            self.spec = dict["Spec"] as! String
        }
    }
}

public class UpdateAcceleratorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAcceleratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAcceleratorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAcceleratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAcceleratorAutoRenewAttributeRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var autoRenew: Bool?

    public var autoRenewDuration: Int32?

    public var clientToken: String?

    public var name: String?

    public var regionId: String?

    public var renewalStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.renewalStatus != nil {
            map["RenewalStatus"] = self.renewalStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RenewalStatus") {
            self.renewalStatus = dict["RenewalStatus"] as! String
        }
    }
}

public class UpdateAcceleratorAutoRenewAttributeResponseBody : Tea.TeaModel {
    public var acceleratorId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAcceleratorAutoRenewAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAcceleratorAutoRenewAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAcceleratorAutoRenewAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAcceleratorConfirmRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateAcceleratorConfirmResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAcceleratorConfirmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAcceleratorConfirmResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAcceleratorConfirmResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAclAttributeRequest : Tea.TeaModel {
    public var aclId: String?

    public var aclName: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclName != nil {
            map["AclName"] = self.aclName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclName") {
            self.aclName = dict["AclName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateAclAttributeResponseBody : Tea.TeaModel {
    public var aclId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAclAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAclAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAclAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAdditionalCertificateWithListenerRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var certificateId: String?

    public var clientToken: String?

    public var domain: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("CertificateId") {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateAdditionalCertificateWithListenerResponseBody : Tea.TeaModel {
    public var listenerId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAdditionalCertificateWithListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAdditionalCertificateWithListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAdditionalCertificateWithListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApplicationMonitorRequest : Tea.TeaModel {
    public var address: String?

    public var clientToken: String?

    public var detectEnable: Bool?

    public var detectThreshold: Int32?

    public var detectTimes: Int32?

    public var listenerId: String?

    public var optionsJson: String?

    public var regionId: String?

    public var silenceTime: Int32?

    public var taskId: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.detectEnable != nil {
            map["DetectEnable"] = self.detectEnable!
        }
        if self.detectThreshold != nil {
            map["DetectThreshold"] = self.detectThreshold!
        }
        if self.detectTimes != nil {
            map["DetectTimes"] = self.detectTimes!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.optionsJson != nil {
            map["OptionsJson"] = self.optionsJson!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.silenceTime != nil {
            map["SilenceTime"] = self.silenceTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DetectEnable") {
            self.detectEnable = dict["DetectEnable"] as! Bool
        }
        if dict.keys.contains("DetectThreshold") {
            self.detectThreshold = dict["DetectThreshold"] as! Int32
        }
        if dict.keys.contains("DetectTimes") {
            self.detectTimes = dict["DetectTimes"] as! Int32
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("OptionsJson") {
            self.optionsJson = dict["OptionsJson"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SilenceTime") {
            self.silenceTime = dict["SilenceTime"] as! Int32
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class UpdateApplicationMonitorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateApplicationMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationMonitorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateApplicationMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBandwidthPackagaAutoRenewAttributeRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var autoRenewDuration: Int32?

    public var clientToken: String?

    public var instanceId: String?

    public var name: String?

    public var regionId: String?

    public var renewalStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.renewalStatus != nil {
            map["RenewalStatus"] = self.renewalStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RenewalStatus") {
            self.renewalStatus = dict["RenewalStatus"] as! String
        }
    }
}

public class UpdateBandwidthPackagaAutoRenewAttributeResponseBody : Tea.TeaModel {
    public var instanceId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateBandwidthPackagaAutoRenewAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBandwidthPackagaAutoRenewAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateBandwidthPackagaAutoRenewAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBandwidthPackageRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var autoUseCoupon: Bool?

    public var bandwidth: Int32?

    public var bandwidthPackageId: String?

    public var bandwidthType: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoUseCoupon != nil {
            map["AutoUseCoupon"] = self.autoUseCoupon!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.bandwidthPackageId != nil {
            map["BandwidthPackageId"] = self.bandwidthPackageId!
        }
        if self.bandwidthType != nil {
            map["BandwidthType"] = self.bandwidthType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("AutoUseCoupon") {
            self.autoUseCoupon = dict["AutoUseCoupon"] as! Bool
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("BandwidthType") {
            self.bandwidthType = dict["BandwidthType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateBandwidthPackageResponseBody : Tea.TeaModel {
    public var bandwidthPackage: String?

    public var description_: String?

    public var name: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidthPackage != nil {
            map["BandwidthPackage"] = self.bandwidthPackage!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BandwidthPackage") {
            self.bandwidthPackage = dict["BandwidthPackage"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateBandwidthPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBandwidthPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateBandwidthPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBasicAcceleratorRequest : Tea.TeaModel {
    public var acceleratorId: String?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateBasicAcceleratorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateBasicAcceleratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBasicAcceleratorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateBasicAcceleratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBasicEndpointGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var endpointAddress: String?

    public var endpointGroupId: String?

    public var endpointSubAddress: String?

    public var endpointType: String?

    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endpointAddress != nil {
            map["EndpointAddress"] = self.endpointAddress!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.endpointSubAddress != nil {
            map["EndpointSubAddress"] = self.endpointSubAddress!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndpointAddress") {
            self.endpointAddress = dict["EndpointAddress"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("EndpointSubAddress") {
            self.endpointSubAddress = dict["EndpointSubAddress"] as! String
        }
        if dict.keys.contains("EndpointType") {
            self.endpointType = dict["EndpointType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateBasicEndpointGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateBasicEndpointGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBasicEndpointGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateBasicEndpointGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBasicIpSetRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var clientToken: String?

    public var ipSetId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ipSetId != nil {
            map["IpSetId"] = self.ipSetId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("IpSetId") {
            self.ipSetId = dict["IpSetId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateBasicIpSetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateBasicIpSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBasicIpSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateBasicIpSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCustomRoutingEndpointGroupAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var endpointGroupId: String?

    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateCustomRoutingEndpointGroupAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateCustomRoutingEndpointGroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomRoutingEndpointGroupAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateCustomRoutingEndpointGroupAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCustomRoutingEndpointGroupDestinationsRequest : Tea.TeaModel {
    public class DestinationConfigurations : Tea.TeaModel {
        public var destinationId: String?

        public var fromPort: Int32?

        public var protocols: [String]?

        public var toPort: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.destinationId != nil {
                map["DestinationId"] = self.destinationId!
            }
            if self.fromPort != nil {
                map["FromPort"] = self.fromPort!
            }
            if self.protocols != nil {
                map["Protocols"] = self.protocols!
            }
            if self.toPort != nil {
                map["ToPort"] = self.toPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DestinationId") {
                self.destinationId = dict["DestinationId"] as! String
            }
            if dict.keys.contains("FromPort") {
                self.fromPort = dict["FromPort"] as! Int32
            }
            if dict.keys.contains("Protocols") {
                self.protocols = dict["Protocols"] as! [String]
            }
            if dict.keys.contains("ToPort") {
                self.toPort = dict["ToPort"] as! Int32
            }
        }
    }
    public var clientToken: String?

    public var destinationConfigurations: [UpdateCustomRoutingEndpointGroupDestinationsRequest.DestinationConfigurations]?

    public var dryRun: Bool?

    public var endpointGroupId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.destinationConfigurations != nil {
            var tmp : [Any] = []
            for k in self.destinationConfigurations! {
                tmp.append(k.toMap())
            }
            map["DestinationConfigurations"] = tmp
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DestinationConfigurations") {
            self.destinationConfigurations = dict["DestinationConfigurations"] as! [UpdateCustomRoutingEndpointGroupDestinationsRequest.DestinationConfigurations]
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateCustomRoutingEndpointGroupDestinationsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateCustomRoutingEndpointGroupDestinationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomRoutingEndpointGroupDestinationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateCustomRoutingEndpointGroupDestinationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCustomRoutingEndpointTrafficPoliciesRequest : Tea.TeaModel {
    public class PolicyConfigurations : Tea.TeaModel {
        public class PortRanges : Tea.TeaModel {
            public var fromPort: Int32?

            public var toPort: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fromPort != nil {
                    map["FromPort"] = self.fromPort!
                }
                if self.toPort != nil {
                    map["ToPort"] = self.toPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FromPort") {
                    self.fromPort = dict["FromPort"] as! Int32
                }
                if dict.keys.contains("ToPort") {
                    self.toPort = dict["ToPort"] as! Int32
                }
            }
        }
        public var address: String?

        public var policyId: String?

        public var portRanges: [UpdateCustomRoutingEndpointTrafficPoliciesRequest.PolicyConfigurations.PortRanges]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.portRanges != nil {
                var tmp : [Any] = []
                for k in self.portRanges! {
                    tmp.append(k.toMap())
                }
                map["PortRanges"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("PortRanges") {
                self.portRanges = dict["PortRanges"] as! [UpdateCustomRoutingEndpointTrafficPoliciesRequest.PolicyConfigurations.PortRanges]
            }
        }
    }
    public var clientToken: String?

    public var endpointId: String?

    public var policyConfigurations: [UpdateCustomRoutingEndpointTrafficPoliciesRequest.PolicyConfigurations]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.policyConfigurations != nil {
            var tmp : [Any] = []
            for k in self.policyConfigurations! {
                tmp.append(k.toMap())
            }
            map["PolicyConfigurations"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointId") {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("PolicyConfigurations") {
            self.policyConfigurations = dict["PolicyConfigurations"] as! [UpdateCustomRoutingEndpointTrafficPoliciesRequest.PolicyConfigurations]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateCustomRoutingEndpointTrafficPoliciesResponseBody : Tea.TeaModel {
    public var policyIds: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyIds") {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateCustomRoutingEndpointTrafficPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomRoutingEndpointTrafficPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateCustomRoutingEndpointTrafficPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCustomRoutingEndpointsRequest : Tea.TeaModel {
    public class EndpointConfigurations : Tea.TeaModel {
        public class PolicyConfigurations : Tea.TeaModel {
            public class PortRanges : Tea.TeaModel {
                public var fromPort: String?

                public var toPort: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fromPort != nil {
                        map["FromPort"] = self.fromPort!
                    }
                    if self.toPort != nil {
                        map["ToPort"] = self.toPort!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FromPort") {
                        self.fromPort = dict["FromPort"] as! String
                    }
                    if dict.keys.contains("ToPort") {
                        self.toPort = dict["ToPort"] as! String
                    }
                }
            }
            public var address: String?

            public var portRanges: [UpdateCustomRoutingEndpointsRequest.EndpointConfigurations.PolicyConfigurations.PortRanges]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.portRanges != nil {
                    var tmp : [Any] = []
                    for k in self.portRanges! {
                        tmp.append(k.toMap())
                    }
                    map["PortRanges"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("PortRanges") {
                    self.portRanges = dict["PortRanges"] as! [UpdateCustomRoutingEndpointsRequest.EndpointConfigurations.PolicyConfigurations.PortRanges]
                }
            }
        }
        public var endpointId: String?

        public var policyConfigurations: [UpdateCustomRoutingEndpointsRequest.EndpointConfigurations.PolicyConfigurations]?

        public var trafficToEndpointPolicy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.policyConfigurations != nil {
                var tmp : [Any] = []
                for k in self.policyConfigurations! {
                    tmp.append(k.toMap())
                }
                map["PolicyConfigurations"] = tmp
            }
            if self.trafficToEndpointPolicy != nil {
                map["TrafficToEndpointPolicy"] = self.trafficToEndpointPolicy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndpointId") {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("PolicyConfigurations") {
                self.policyConfigurations = dict["PolicyConfigurations"] as! [UpdateCustomRoutingEndpointsRequest.EndpointConfigurations.PolicyConfigurations]
            }
            if dict.keys.contains("TrafficToEndpointPolicy") {
                self.trafficToEndpointPolicy = dict["TrafficToEndpointPolicy"] as! String
            }
        }
    }
    public var clientToken: String?

    public var endpointConfigurations: [UpdateCustomRoutingEndpointsRequest.EndpointConfigurations]?

    public var endpointGroupId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endpointConfigurations != nil {
            var tmp : [Any] = []
            for k in self.endpointConfigurations! {
                tmp.append(k.toMap())
            }
            map["EndpointConfigurations"] = tmp
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndpointConfigurations") {
            self.endpointConfigurations = dict["EndpointConfigurations"] as! [UpdateCustomRoutingEndpointsRequest.EndpointConfigurations]
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateCustomRoutingEndpointsResponseBody : Tea.TeaModel {
    public var endpointIds: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointIds != nil {
            map["EndpointIds"] = self.endpointIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointIds") {
            self.endpointIds = dict["EndpointIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateCustomRoutingEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomRoutingEndpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateCustomRoutingEndpointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEndpointGroupRequest : Tea.TeaModel {
    public class EndpointConfigurations : Tea.TeaModel {
        public var enableClientIPPreservation: Bool?

        public var endpoint: String?

        public var type: String?

        public var weight: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableClientIPPreservation != nil {
                map["EnableClientIPPreservation"] = self.enableClientIPPreservation!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableClientIPPreservation") {
                self.enableClientIPPreservation = dict["EnableClientIPPreservation"] as! Bool
            }
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Weight") {
                self.weight = dict["Weight"] as! Int32
            }
        }
    }
    public class PortOverrides : Tea.TeaModel {
        public var endpointPort: Int32?

        public var listenerPort: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointPort != nil {
                map["EndpointPort"] = self.endpointPort!
            }
            if self.listenerPort != nil {
                map["ListenerPort"] = self.listenerPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndpointPort") {
                self.endpointPort = dict["EndpointPort"] as! Int32
            }
            if dict.keys.contains("ListenerPort") {
                self.listenerPort = dict["ListenerPort"] as! Int32
            }
        }
    }
    public var clientToken: String?

    public var description_: String?

    public var endpointConfigurations: [UpdateEndpointGroupRequest.EndpointConfigurations]?

    public var endpointGroupId: String?

    public var endpointGroupRegion: String?

    public var endpointRequestProtocol: String?

    public var healthCheckEnabled: Bool?

    public var healthCheckIntervalSeconds: Int32?

    public var healthCheckPath: String?

    public var healthCheckPort: Int32?

    public var healthCheckProtocol: String?

    public var name: String?

    public var portOverrides: [UpdateEndpointGroupRequest.PortOverrides]?

    public var regionId: String?

    public var thresholdCount: Int32?

    public var trafficPercentage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endpointConfigurations != nil {
            var tmp : [Any] = []
            for k in self.endpointConfigurations! {
                tmp.append(k.toMap())
            }
            map["EndpointConfigurations"] = tmp
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.endpointGroupRegion != nil {
            map["EndpointGroupRegion"] = self.endpointGroupRegion!
        }
        if self.endpointRequestProtocol != nil {
            map["EndpointRequestProtocol"] = self.endpointRequestProtocol!
        }
        if self.healthCheckEnabled != nil {
            map["HealthCheckEnabled"] = self.healthCheckEnabled!
        }
        if self.healthCheckIntervalSeconds != nil {
            map["HealthCheckIntervalSeconds"] = self.healthCheckIntervalSeconds!
        }
        if self.healthCheckPath != nil {
            map["HealthCheckPath"] = self.healthCheckPath!
        }
        if self.healthCheckPort != nil {
            map["HealthCheckPort"] = self.healthCheckPort!
        }
        if self.healthCheckProtocol != nil {
            map["HealthCheckProtocol"] = self.healthCheckProtocol!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.portOverrides != nil {
            var tmp : [Any] = []
            for k in self.portOverrides! {
                tmp.append(k.toMap())
            }
            map["PortOverrides"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.thresholdCount != nil {
            map["ThresholdCount"] = self.thresholdCount!
        }
        if self.trafficPercentage != nil {
            map["TrafficPercentage"] = self.trafficPercentage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndpointConfigurations") {
            self.endpointConfigurations = dict["EndpointConfigurations"] as! [UpdateEndpointGroupRequest.EndpointConfigurations]
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("EndpointGroupRegion") {
            self.endpointGroupRegion = dict["EndpointGroupRegion"] as! String
        }
        if dict.keys.contains("EndpointRequestProtocol") {
            self.endpointRequestProtocol = dict["EndpointRequestProtocol"] as! String
        }
        if dict.keys.contains("HealthCheckEnabled") {
            self.healthCheckEnabled = dict["HealthCheckEnabled"] as! Bool
        }
        if dict.keys.contains("HealthCheckIntervalSeconds") {
            self.healthCheckIntervalSeconds = dict["HealthCheckIntervalSeconds"] as! Int32
        }
        if dict.keys.contains("HealthCheckPath") {
            self.healthCheckPath = dict["HealthCheckPath"] as! String
        }
        if dict.keys.contains("HealthCheckPort") {
            self.healthCheckPort = dict["HealthCheckPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckProtocol") {
            self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PortOverrides") {
            self.portOverrides = dict["PortOverrides"] as! [UpdateEndpointGroupRequest.PortOverrides]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ThresholdCount") {
            self.thresholdCount = dict["ThresholdCount"] as! Int32
        }
        if dict.keys.contains("TrafficPercentage") {
            self.trafficPercentage = dict["TrafficPercentage"] as! Int32
        }
    }
}

public class UpdateEndpointGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateEndpointGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEndpointGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateEndpointGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEndpointGroupAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var endpointGroupId: String?

    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endpointGroupId != nil {
            map["EndpointGroupId"] = self.endpointGroupId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndpointGroupId") {
            self.endpointGroupId = dict["EndpointGroupId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateEndpointGroupAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateEndpointGroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEndpointGroupAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateEndpointGroupAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEndpointGroupsRequest : Tea.TeaModel {
    public class EndpointGroupConfigurations : Tea.TeaModel {
        public class EndpointConfigurations : Tea.TeaModel {
            public var endpoint: String?

            public var type: String?

            public var weight: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Endpoint") {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int64
                }
            }
        }
        public class PortOverrides : Tea.TeaModel {
            public var endpointPort: Int64?

            public var listenerPort: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpointPort != nil {
                    map["EndpointPort"] = self.endpointPort!
                }
                if self.listenerPort != nil {
                    map["ListenerPort"] = self.listenerPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndpointPort") {
                    self.endpointPort = dict["EndpointPort"] as! Int64
                }
                if dict.keys.contains("ListenerPort") {
                    self.listenerPort = dict["ListenerPort"] as! Int64
                }
            }
        }
        public var enableClientIPPreservationProxyProtocol: Bool?

        public var enableClientIPPreservationToa: Bool?

        public var endpointConfigurations: [UpdateEndpointGroupsRequest.EndpointGroupConfigurations.EndpointConfigurations]?

        public var endpointGroupDescription: String?

        public var endpointGroupId: String?

        public var endpointGroupName: String?

        public var endpointRequestProtocol: String?

        public var healthCheckEnabled: Bool?

        public var healthCheckIntervalSeconds: Int64?

        public var healthCheckPath: String?

        public var healthCheckPort: Int64?

        public var healthCheckProtocol: String?

        public var portOverrides: [UpdateEndpointGroupsRequest.EndpointGroupConfigurations.PortOverrides]?

        public var thresholdCount: Int64?

        public var trafficPercentage: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableClientIPPreservationProxyProtocol != nil {
                map["EnableClientIPPreservationProxyProtocol"] = self.enableClientIPPreservationProxyProtocol!
            }
            if self.enableClientIPPreservationToa != nil {
                map["EnableClientIPPreservationToa"] = self.enableClientIPPreservationToa!
            }
            if self.endpointConfigurations != nil {
                var tmp : [Any] = []
                for k in self.endpointConfigurations! {
                    tmp.append(k.toMap())
                }
                map["EndpointConfigurations"] = tmp
            }
            if self.endpointGroupDescription != nil {
                map["EndpointGroupDescription"] = self.endpointGroupDescription!
            }
            if self.endpointGroupId != nil {
                map["EndpointGroupId"] = self.endpointGroupId!
            }
            if self.endpointGroupName != nil {
                map["EndpointGroupName"] = self.endpointGroupName!
            }
            if self.endpointRequestProtocol != nil {
                map["EndpointRequestProtocol"] = self.endpointRequestProtocol!
            }
            if self.healthCheckEnabled != nil {
                map["HealthCheckEnabled"] = self.healthCheckEnabled!
            }
            if self.healthCheckIntervalSeconds != nil {
                map["HealthCheckIntervalSeconds"] = self.healthCheckIntervalSeconds!
            }
            if self.healthCheckPath != nil {
                map["HealthCheckPath"] = self.healthCheckPath!
            }
            if self.healthCheckPort != nil {
                map["HealthCheckPort"] = self.healthCheckPort!
            }
            if self.healthCheckProtocol != nil {
                map["HealthCheckProtocol"] = self.healthCheckProtocol!
            }
            if self.portOverrides != nil {
                var tmp : [Any] = []
                for k in self.portOverrides! {
                    tmp.append(k.toMap())
                }
                map["PortOverrides"] = tmp
            }
            if self.thresholdCount != nil {
                map["ThresholdCount"] = self.thresholdCount!
            }
            if self.trafficPercentage != nil {
                map["TrafficPercentage"] = self.trafficPercentage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableClientIPPreservationProxyProtocol") {
                self.enableClientIPPreservationProxyProtocol = dict["EnableClientIPPreservationProxyProtocol"] as! Bool
            }
            if dict.keys.contains("EnableClientIPPreservationToa") {
                self.enableClientIPPreservationToa = dict["EnableClientIPPreservationToa"] as! Bool
            }
            if dict.keys.contains("EndpointConfigurations") {
                self.endpointConfigurations = dict["EndpointConfigurations"] as! [UpdateEndpointGroupsRequest.EndpointGroupConfigurations.EndpointConfigurations]
            }
            if dict.keys.contains("EndpointGroupDescription") {
                self.endpointGroupDescription = dict["EndpointGroupDescription"] as! String
            }
            if dict.keys.contains("EndpointGroupId") {
                self.endpointGroupId = dict["EndpointGroupId"] as! String
            }
            if dict.keys.contains("EndpointGroupName") {
                self.endpointGroupName = dict["EndpointGroupName"] as! String
            }
            if dict.keys.contains("EndpointRequestProtocol") {
                self.endpointRequestProtocol = dict["EndpointRequestProtocol"] as! String
            }
            if dict.keys.contains("HealthCheckEnabled") {
                self.healthCheckEnabled = dict["HealthCheckEnabled"] as! Bool
            }
            if dict.keys.contains("HealthCheckIntervalSeconds") {
                self.healthCheckIntervalSeconds = dict["HealthCheckIntervalSeconds"] as! Int64
            }
            if dict.keys.contains("HealthCheckPath") {
                self.healthCheckPath = dict["HealthCheckPath"] as! String
            }
            if dict.keys.contains("HealthCheckPort") {
                self.healthCheckPort = dict["HealthCheckPort"] as! Int64
            }
            if dict.keys.contains("HealthCheckProtocol") {
                self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
            }
            if dict.keys.contains("PortOverrides") {
                self.portOverrides = dict["PortOverrides"] as! [UpdateEndpointGroupsRequest.EndpointGroupConfigurations.PortOverrides]
            }
            if dict.keys.contains("ThresholdCount") {
                self.thresholdCount = dict["ThresholdCount"] as! Int64
            }
            if dict.keys.contains("TrafficPercentage") {
                self.trafficPercentage = dict["TrafficPercentage"] as! Int64
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointGroupConfigurations: [UpdateEndpointGroupsRequest.EndpointGroupConfigurations]?

    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointGroupConfigurations != nil {
            var tmp : [Any] = []
            for k in self.endpointGroupConfigurations! {
                tmp.append(k.toMap())
            }
            map["EndpointGroupConfigurations"] = tmp
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointGroupConfigurations") {
            self.endpointGroupConfigurations = dict["EndpointGroupConfigurations"] as! [UpdateEndpointGroupsRequest.EndpointGroupConfigurations]
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateEndpointGroupsResponseBody : Tea.TeaModel {
    public var endpointGroupIds: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointGroupIds != nil {
            map["EndpointGroupIds"] = self.endpointGroupIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointGroupIds") {
            self.endpointGroupIds = dict["EndpointGroupIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateEndpointGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEndpointGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateEndpointGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateForwardingRulesRequest : Tea.TeaModel {
    public class ForwardingRules : Tea.TeaModel {
        public class RuleActions : Tea.TeaModel {
            public class ForwardGroupConfig : Tea.TeaModel {
                public class ServerGroupTuples : Tea.TeaModel {
                    public var endpointGroupId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.endpointGroupId != nil {
                            map["EndpointGroupId"] = self.endpointGroupId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EndpointGroupId") {
                            self.endpointGroupId = dict["EndpointGroupId"] as! String
                        }
                    }
                }
                public var serverGroupTuples: [UpdateForwardingRulesRequest.ForwardingRules.RuleActions.ForwardGroupConfig.ServerGroupTuples]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serverGroupTuples != nil {
                        var tmp : [Any] = []
                        for k in self.serverGroupTuples! {
                            tmp.append(k.toMap())
                        }
                        map["ServerGroupTuples"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupTuples") {
                        self.serverGroupTuples = dict["ServerGroupTuples"] as! [UpdateForwardingRulesRequest.ForwardingRules.RuleActions.ForwardGroupConfig.ServerGroupTuples]
                    }
                }
            }
            public var forwardGroupConfig: UpdateForwardingRulesRequest.ForwardingRules.RuleActions.ForwardGroupConfig?

            public var order: Int32?

            public var ruleActionType: String?

            public var ruleActionValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.forwardGroupConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.forwardGroupConfig != nil {
                    map["ForwardGroupConfig"] = self.forwardGroupConfig?.toMap()
                }
                if self.order != nil {
                    map["Order"] = self.order!
                }
                if self.ruleActionType != nil {
                    map["RuleActionType"] = self.ruleActionType!
                }
                if self.ruleActionValue != nil {
                    map["RuleActionValue"] = self.ruleActionValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ForwardGroupConfig") {
                    var model = UpdateForwardingRulesRequest.ForwardingRules.RuleActions.ForwardGroupConfig()
                    model.fromMap(dict["ForwardGroupConfig"] as! [String: Any])
                    self.forwardGroupConfig = model
                }
                if dict.keys.contains("Order") {
                    self.order = dict["Order"] as! Int32
                }
                if dict.keys.contains("RuleActionType") {
                    self.ruleActionType = dict["RuleActionType"] as! String
                }
                if dict.keys.contains("RuleActionValue") {
                    self.ruleActionValue = dict["RuleActionValue"] as! String
                }
            }
        }
        public class RuleConditions : Tea.TeaModel {
            public class HostConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public class PathConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public var hostConfig: UpdateForwardingRulesRequest.ForwardingRules.RuleConditions.HostConfig?

            public var pathConfig: UpdateForwardingRulesRequest.ForwardingRules.RuleConditions.PathConfig?

            public var ruleConditionType: String?

            public var ruleConditionValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.hostConfig?.validate()
                try self.pathConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hostConfig != nil {
                    map["HostConfig"] = self.hostConfig?.toMap()
                }
                if self.pathConfig != nil {
                    map["PathConfig"] = self.pathConfig?.toMap()
                }
                if self.ruleConditionType != nil {
                    map["RuleConditionType"] = self.ruleConditionType!
                }
                if self.ruleConditionValue != nil {
                    map["RuleConditionValue"] = self.ruleConditionValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HostConfig") {
                    var model = UpdateForwardingRulesRequest.ForwardingRules.RuleConditions.HostConfig()
                    model.fromMap(dict["HostConfig"] as! [String: Any])
                    self.hostConfig = model
                }
                if dict.keys.contains("PathConfig") {
                    var model = UpdateForwardingRulesRequest.ForwardingRules.RuleConditions.PathConfig()
                    model.fromMap(dict["PathConfig"] as! [String: Any])
                    self.pathConfig = model
                }
                if dict.keys.contains("RuleConditionType") {
                    self.ruleConditionType = dict["RuleConditionType"] as! String
                }
                if dict.keys.contains("RuleConditionValue") {
                    self.ruleConditionValue = dict["RuleConditionValue"] as! String
                }
            }
        }
        public var forwardingRuleId: String?

        public var forwardingRuleName: String?

        public var priority: Int32?

        public var ruleActions: [UpdateForwardingRulesRequest.ForwardingRules.RuleActions]?

        public var ruleConditions: [UpdateForwardingRulesRequest.ForwardingRules.RuleConditions]?

        public var ruleDirection: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.forwardingRuleId != nil {
                map["ForwardingRuleId"] = self.forwardingRuleId!
            }
            if self.forwardingRuleName != nil {
                map["ForwardingRuleName"] = self.forwardingRuleName!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.ruleActions != nil {
                var tmp : [Any] = []
                for k in self.ruleActions! {
                    tmp.append(k.toMap())
                }
                map["RuleActions"] = tmp
            }
            if self.ruleConditions != nil {
                var tmp : [Any] = []
                for k in self.ruleConditions! {
                    tmp.append(k.toMap())
                }
                map["RuleConditions"] = tmp
            }
            if self.ruleDirection != nil {
                map["RuleDirection"] = self.ruleDirection!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ForwardingRuleId") {
                self.forwardingRuleId = dict["ForwardingRuleId"] as! String
            }
            if dict.keys.contains("ForwardingRuleName") {
                self.forwardingRuleName = dict["ForwardingRuleName"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RuleActions") {
                self.ruleActions = dict["RuleActions"] as! [UpdateForwardingRulesRequest.ForwardingRules.RuleActions]
            }
            if dict.keys.contains("RuleConditions") {
                self.ruleConditions = dict["RuleConditions"] as! [UpdateForwardingRulesRequest.ForwardingRules.RuleConditions]
            }
            if dict.keys.contains("RuleDirection") {
                self.ruleDirection = dict["RuleDirection"] as! String
            }
        }
    }
    public var acceleratorId: String?

    public var clientToken: String?

    public var forwardingRules: [UpdateForwardingRulesRequest.ForwardingRules]?

    public var listenerId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorId != nil {
            map["AcceleratorId"] = self.acceleratorId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.forwardingRules != nil {
            var tmp : [Any] = []
            for k in self.forwardingRules! {
                tmp.append(k.toMap())
            }
            map["ForwardingRules"] = tmp
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorId") {
            self.acceleratorId = dict["AcceleratorId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ForwardingRules") {
            self.forwardingRules = dict["ForwardingRules"] as! [UpdateForwardingRulesRequest.ForwardingRules]
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateForwardingRulesResponseBody : Tea.TeaModel {
    public class ForwardingRules : Tea.TeaModel {
        public var forwardingRuleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.forwardingRuleId != nil {
                map["ForwardingRuleId"] = self.forwardingRuleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ForwardingRuleId") {
                self.forwardingRuleId = dict["ForwardingRuleId"] as! String
            }
        }
    }
    public var forwardingRules: [UpdateForwardingRulesResponseBody.ForwardingRules]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forwardingRules != nil {
            var tmp : [Any] = []
            for k in self.forwardingRules! {
                tmp.append(k.toMap())
            }
            map["ForwardingRules"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ForwardingRules") {
            self.forwardingRules = dict["ForwardingRules"] as! [UpdateForwardingRulesResponseBody.ForwardingRules]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateForwardingRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateForwardingRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateForwardingRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateIpSetRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var clientToken: String?

    public var ipSetId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ipSetId != nil {
            map["IpSetId"] = self.ipSetId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("IpSetId") {
            self.ipSetId = dict["IpSetId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateIpSetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateIpSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIpSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateIpSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateIpSetsRequest : Tea.TeaModel {
    public class IpSets : Tea.TeaModel {
        public var bandwidth: Int32?

        public var ipSetId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.ipSetId != nil {
                map["IpSetId"] = self.ipSetId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("IpSetId") {
                self.ipSetId = dict["IpSetId"] as! String
            }
        }
    }
    public var ipSets: [UpdateIpSetsRequest.IpSets]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipSets != nil {
            var tmp : [Any] = []
            for k in self.ipSets! {
                tmp.append(k.toMap())
            }
            map["IpSets"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpSets") {
            self.ipSets = dict["IpSets"] as! [UpdateIpSetsRequest.IpSets]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateIpSetsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateIpSetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIpSetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateIpSetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateListenerRequest : Tea.TeaModel {
    public class BackendPorts : Tea.TeaModel {
        public var fromPort: Int32?

        public var toPort: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fromPort != nil {
                map["FromPort"] = self.fromPort!
            }
            if self.toPort != nil {
                map["ToPort"] = self.toPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FromPort") {
                self.fromPort = dict["FromPort"] as! Int32
            }
            if dict.keys.contains("ToPort") {
                self.toPort = dict["ToPort"] as! Int32
            }
        }
    }
    public class Certificates : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public class PortRanges : Tea.TeaModel {
        public var fromPort: Int32?

        public var toPort: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fromPort != nil {
                map["FromPort"] = self.fromPort!
            }
            if self.toPort != nil {
                map["ToPort"] = self.toPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FromPort") {
                self.fromPort = dict["FromPort"] as! Int32
            }
            if dict.keys.contains("ToPort") {
                self.toPort = dict["ToPort"] as! Int32
            }
        }
    }
    public class XForwardedForConfig : Tea.TeaModel {
        public var XForwardedForGaApEnabled: Bool?

        public var XForwardedForGaIdEnabled: Bool?

        public var XForwardedForPortEnabled: Bool?

        public var XForwardedForProtoEnabled: Bool?

        public var XRealIpEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.XForwardedForGaApEnabled != nil {
                map["XForwardedForGaApEnabled"] = self.XForwardedForGaApEnabled!
            }
            if self.XForwardedForGaIdEnabled != nil {
                map["XForwardedForGaIdEnabled"] = self.XForwardedForGaIdEnabled!
            }
            if self.XForwardedForPortEnabled != nil {
                map["XForwardedForPortEnabled"] = self.XForwardedForPortEnabled!
            }
            if self.XForwardedForProtoEnabled != nil {
                map["XForwardedForProtoEnabled"] = self.XForwardedForProtoEnabled!
            }
            if self.XRealIpEnabled != nil {
                map["XRealIpEnabled"] = self.XRealIpEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("XForwardedForGaApEnabled") {
                self.XForwardedForGaApEnabled = dict["XForwardedForGaApEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForGaIdEnabled") {
                self.XForwardedForGaIdEnabled = dict["XForwardedForGaIdEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForPortEnabled") {
                self.XForwardedForPortEnabled = dict["XForwardedForPortEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForProtoEnabled") {
                self.XForwardedForProtoEnabled = dict["XForwardedForProtoEnabled"] as! Bool
            }
            if dict.keys.contains("XRealIpEnabled") {
                self.XRealIpEnabled = dict["XRealIpEnabled"] as! Bool
            }
        }
    }
    public var backendPorts: [UpdateListenerRequest.BackendPorts]?

    public var certificates: [UpdateListenerRequest.Certificates]?

    public var clientAffinity: String?

    public var clientToken: String?

    public var description_: String?

    public var listenerId: String?

    public var name: String?

    public var portRanges: [UpdateListenerRequest.PortRanges]?

    public var protocol_: String?

    public var proxyProtocol: String?

    public var regionId: String?

    public var securityPolicyId: String?

    public var XForwardedForConfig: UpdateListenerRequest.XForwardedForConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.XForwardedForConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendPorts != nil {
            var tmp : [Any] = []
            for k in self.backendPorts! {
                tmp.append(k.toMap())
            }
            map["BackendPorts"] = tmp
        }
        if self.certificates != nil {
            var tmp : [Any] = []
            for k in self.certificates! {
                tmp.append(k.toMap())
            }
            map["Certificates"] = tmp
        }
        if self.clientAffinity != nil {
            map["ClientAffinity"] = self.clientAffinity!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.portRanges != nil {
            var tmp : [Any] = []
            for k in self.portRanges! {
                tmp.append(k.toMap())
            }
            map["PortRanges"] = tmp
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.proxyProtocol != nil {
            map["ProxyProtocol"] = self.proxyProtocol!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
        }
        if self.XForwardedForConfig != nil {
            map["XForwardedForConfig"] = self.XForwardedForConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendPorts") {
            self.backendPorts = dict["BackendPorts"] as! [UpdateListenerRequest.BackendPorts]
        }
        if dict.keys.contains("Certificates") {
            self.certificates = dict["Certificates"] as! [UpdateListenerRequest.Certificates]
        }
        if dict.keys.contains("ClientAffinity") {
            self.clientAffinity = dict["ClientAffinity"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PortRanges") {
            self.portRanges = dict["PortRanges"] as! [UpdateListenerRequest.PortRanges]
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("ProxyProtocol") {
            self.proxyProtocol = dict["ProxyProtocol"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityPolicyId") {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
        if dict.keys.contains("XForwardedForConfig") {
            var model = UpdateListenerRequest.XForwardedForConfig()
            model.fromMap(dict["XForwardedForConfig"] as! [String: Any])
            self.XForwardedForConfig = model
        }
    }
}

public class UpdateListenerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
